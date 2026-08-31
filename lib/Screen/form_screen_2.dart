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
      body: Center(
        child: Column(
          children: [
            Image.network("https://cdn.vectorstock.com/i/500p/95/67/woman-shield-checkmark-protection-icon-vector-59939567.avif",
            scale: 3,
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
            SizedBox(
              width: screenSize.width * 0.8,
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
                    height: screenSize.height * 0.12,
                  ),
                  SizedBox(
                    width: double.infinity,
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
