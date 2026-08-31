import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormScreen2 extends StatelessWidget {
  const FormScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.chevron_left)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            Image.network(
              height: screenSize.height * 0.1,
              width: screenSize.width * 0.2,
              "https://imgs.search.brave.com/xt9YXb497rPqrxjVAVFUALbJuHfAJyroAv1QhR2yt2g/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNTkv/NDY0LzU0OS9zbWFs/bC9hLWNhcnRvb24t/d29tYW4taW4tYS1i/dXNpbmVzcy1zdWl0/LXdhdmluZy1oZXIt/aGFuZC1mcmVlLXBu/Zy5wbmc",
            scale: 2,
            fit: BoxFit.cover,
            ),
            Text("Create your account", style: GoogleFonts.inter(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),),
            Text("Join us and start your journey today", style: GoogleFonts.inter(
              fontSize: 14,
              color: Colors.green.shade400,
            ),),
            SizedBox(height: 20,),
            SizedBox(
              child: Form(child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.grey.shade400,
                            width: 2
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.grey.shade400,
                            width: 2
                        ),
                      ),
                      prefixIcon: Icon(CupertinoIcons.profile_circled, color: Colors.grey.shade400),
                      labelText: "Email or Username",
                      labelStyle: TextStyle(color: Colors.grey.shade400, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.grey.shade400,
                            width: 2
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.grey.shade400,
                            width: 2
                        ),
                      ),
                      prefixIcon: Icon(CupertinoIcons.mail, color: Colors.grey.shade400),
                      labelText: "Email Address",
                      labelStyle: TextStyle(color: Colors.grey.shade400, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.grey.shade400,
                            width: 2
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.grey.shade400,
                            width: 2
                        ),
                      ),
                      prefixIcon: Icon(Icons.lock, color: Colors.grey.shade400),
                      // prefixStyle: TextStyle(color: Colors.grey.shade400),
                      suffixIcon: Icon(Icons.visibility_off_rounded, color: Colors.grey.shade400),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.grey.shade400, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.grey.shade400,
                            width: 2
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.grey.shade400,
                            width: 2
                        ),
                      ),
                      prefixIcon: Icon(Icons.lock, color: Colors.grey.shade400),
                      // prefixStyle: TextStyle(color: Colors.grey.shade400),
                      suffixIcon: Icon(Icons.visibility_off_rounded, color: Colors.grey.shade400),
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(color: Colors.grey.shade400, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.10,
                  ),
                  SizedBox(
                    height: screenSize.height * 0.06,
                    child: FilledButton(
                      onPressed: (){},
                      style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      child: Center(
                        child: Text("Create Account"),
                      )
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          height: screenSize.height * 0.1,
                          color: Colors.blueGrey,
                          thickness: 1,
                          endIndent: 12,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
