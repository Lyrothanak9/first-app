import 'package:flutter/cupertino.dart';
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

  @override
  void dispose() {
    titleController.dispose();
    desController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  createBoard();
                },
                child: const Text("Click Button"),
              ),
            ),
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Title'),
            controller: titleController,
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Description'),
            controller: desController,
          ),
          Expanded(
            child: FutureBuilder<List<Map<String, dynamic>>>(
              future: fetchBoards(),
              builder: (context, snapshot) {
                // 1. While loading
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                // 2. If an error occurs
                else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }
                // 3. If data is empty
                else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text('No boards created yet.'));
                }

                // 4. Data loaded successfully
                final boards = snapshot.data!;
                return ListView.builder(
                  itemCount: boards.length,
                  itemBuilder: (context, index) {
                    final board = boards[index];
                    final String boardId = board['id'].toString();

                    return Card(
                      child: ListTile(
                        title: Text(board['title'] ?? 'No Title'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(board['des'] ?? 'No Description'),
                            const SizedBox(height: 4),
                            Text(
                              'ID: $boardId',
                              style: const TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                        // Action buttons (Edit & Delete)
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.edit, color: Colors.blue),
                              onPressed: () {
                                _showUpdateDialog(board);
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              onPressed: () {
                                // Trigger Delete Dialog instead of deleting right away
                                _showDeleteDialog(boardId);
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // Function to show the Update Dialog
  void _showUpdateDialog(Map<String, dynamic> board) {
    final String boardId = board['id'].toString();
    final TextEditingController updateTitleController =
    TextEditingController(text: board['title']);
    final TextEditingController updateDesController =
    TextEditingController(text: board['des']);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Update Board'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: updateTitleController,
                decoration: const InputDecoration(labelText: 'New Title'),
              ),
              TextField(
                controller: updateDesController,
                decoration: const InputDecoration(labelText: 'New Description'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), // Close dialog
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () async {
                await updateBoards(
                  boardId,
                  updateTitleController.text,
                  updateDesController.text,
                );
                Navigator.pop(context); // Close dialog after updating
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  // Function to show Delete Confirmation Dialog
  void _showDeleteDialog(String boardId) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Delete Board'),
          content: const Text('Are you sure you want to delete this board?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), // Close dialog
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () async {
                Navigator.pop(context); // Close dialog first
                await deleteboards(boardId); // Then execute delete
              },
              child: const Text('Delete', style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }

  Future<void> createBoard() async {
    try {
      final String currentUserId = Supabase.instance.client.auth.currentUser!.id;
      await Supabase.instance.client.from("boards").insert({
        'title': titleController.text,
        'des': desController.text,
        'user_id': currentUserId,
      });
      print("Data created successfully!");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Board created successfully!'),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 3),
        ),
      );
      titleController.clear();
      desController.clear();
      setState(() {}); // Refresh list
    } catch (e) {
      print(e);
      print("Failed to create data");
    }
  }

  Future<List<Map<String, dynamic>>> fetchBoards() async {
    try {
      final user = Supabase.instance.client.auth.currentUser;
      if (user == null) {
        print('No user logged in.');
        return [];
      }

      final response = await Supabase.instance.client
          .from("boards")
          .select()
          .eq("user_id", user.id);

      return List<Map<String, dynamic>>.from(response);
    } catch (error) {
      print('Failed to fetch boards: $error');
      return [];
    }
  }

  Future<void> updateBoards(String id, String newTitle, String newDes) async {
    try {
      await Supabase.instance.client.from('boards').update({
        'title': newTitle,
        'des': newDes,
      }).eq('id', id);

      print("Data updated successfully!");

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Board updated successfully!'),
          backgroundColor: Colors.blue,
        ),
      );

      setState(() {}); // Refresh the UI list
    } catch (e) {
      print('Failed to update boards: $e');
    }
  }

  Future<void> deleteboards(String id) async {
    try {
      await Supabase.instance.client
          .from('boards')
          .delete()
          .eq('id', id);

      print("Data deleted successfully!");

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Board deleted successfully!'),
          backgroundColor: Colors.red,
        ),
      );

      setState(() {}); // Refresh list and remove deleted board
    } catch (e) {
      print("Failed to delete $e");
    }
  }
}