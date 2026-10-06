import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class BoardScreen extends StatefulWidget {
  const BoardScreen({super.key});

  @override
  State<BoardScreen> createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController desController = TextEditingController();

  late Future<List<Map<String, dynamic>>> _boardsFuture;

  @override
  void initState() {
    super.initState();
    _loadBoards();
  }

  void _loadBoards() {
    _boardsFuture = fetchBoards();
  }

  @override
  void dispose() {
    titleController.dispose();
    desController.dispose();
    super.dispose();
  }

  void _refreshBoards() {
    setState(() {
      _loadBoards();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Boards Manager')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Scrollable input section to prevent overflow when software keyboard appears
              Expanded(
                flex: 0,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        decoration: const InputDecoration(
                          labelText: 'Title',
                          border: OutlineInputBorder(),
                        ),
                        controller: titleController,
                      ),
                      const SizedBox(height: 12),
                      TextField(
                        decoration: const InputDecoration(
                          labelText: 'Description',
                          border: OutlineInputBorder(),
                        ),
                        controller: desController,
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: createBoard,
                        child: const Text("Create Board"),
                      ),
                      const SizedBox(height: 16),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "All Boards",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
              // Expanded list section with pull-to-refresh
              Expanded(
                child: FutureBuilder<List<Map<String, dynamic>>>(
                  future: _boardsFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return const Center(
                        child: Text('No boards created yet.'),
                      );
                    }

                    final boards = snapshot.data!;
                    return RefreshIndicator(
                      onRefresh: () async => _refreshBoards(),
                      child: ListView.builder(
                        itemCount: boards.length,
                        itemBuilder: (context, index) {
                          final board = boards[index];
                          final String boardId = board['id'].toString();

                          return Card(
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            child: ListTile(
                              title: Text(
                                board['title'] ?? 'No Title',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(board['des'] ?? 'No Description'),
                                  const SizedBox(height: 4),
                                  Text(
                                    'ID: $boardId',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.blue,
                                    ),
                                    onPressed: () =>
                                        _showUpdateDialog(board),
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                    onPressed: () =>
                                        _showDeleteDialog(boardId),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showUpdateDialog(Map<String, dynamic> board) {
    showDialog(
      context: context,
      builder: (context) => UpdateBoardDialog(
        board: board,
        onUpdated: _refreshBoards,
      ),
    );
  }

  void _showDeleteDialog(String boardId) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Delete Board'),
          content: const Text('Are you sure you want to delete this board?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () async {
                Navigator.pop(context);
                await deleteboards(boardId);
              },
              child: const Text(
                'Delete',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> createBoard() async {
    if (titleController.text.trim().isEmpty ||
        desController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please fill in both title and description'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    try {
      await Supabase.instance.client.from("boards").insert({
        'title': titleController.text.trim(),
        'des': desController.text.trim(),
      });

      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Board created successfully!'),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 3),
        ),
      );
      titleController.clear();
      desController.clear();
      _refreshBoards();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to create data: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<List<Map<String, dynamic>>> fetchBoards() async {
    try {
      final response = await Supabase.instance.client
          .from("boards")
          .select();

      return List<Map<String, dynamic>>.from(response);
    } catch (error) {
      print('Failed to fetch boards: $error');
      return [];
    }
  }

  Future<void> deleteboards(String id) async {
    try {
      await Supabase.instance.client
          .from('boards')
          .delete()
          .eq('id', id);

      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Board deleted successfully!'),
          backgroundColor: Colors.red,
        ),
      );

      _refreshBoards();
    } catch (e) {
      print("Failed to delete $e");
    }
  }
}

class UpdateBoardDialog extends StatefulWidget {
  final Map<String, dynamic> board;
  final VoidCallback onUpdated;

  const UpdateBoardDialog({
    super.key,
    required this.board,
    required this.onUpdated,
  });

  @override
  State<UpdateBoardDialog> createState() => _UpdateBoardDialogState();
}

class _UpdateBoardDialogState extends State<UpdateBoardDialog> {
  late final TextEditingController updateTitleController;
  late final TextEditingController updateDesController;

  @override
  void initState() {
    super.initState();
    updateTitleController = TextEditingController(text: widget.board['title']);
    updateDesController = TextEditingController(text: widget.board['des']);
  }

  @override
  void dispose() {
    updateTitleController.dispose();
    updateDesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final String boardId = widget.board['id'].toString();

    return AlertDialog(
      title: const Text('Update Board'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: updateTitleController,
              decoration: const InputDecoration(labelText: 'New Title'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: updateDesController,
              decoration: const InputDecoration(labelText: 'New Description'),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () async {
            if (updateTitleController.text.trim().isEmpty ||
                updateDesController.text.trim().isEmpty) {
              return;
            }

            try {
              await Supabase.instance.client.from('boards').update({
                'title': updateTitleController.text.trim(),
                'des': updateDesController.text.trim(),
              }).eq('id', boardId);

              if (!context.mounted) return;
              Navigator.pop(context);
              widget.onUpdated();

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Board updated successfully!'),
                  backgroundColor: Colors.blue,
                ),
              );
            } catch (e) {
              if (!context.mounted) return;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Failed to update: $e'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          child: const Text('Save'),
        ),
      ],
    );
  }
}
