import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormScreen1 extends StatelessWidget {
  FormScreen1({super.key});
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    bool? value = false;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: SizedBox(
                height: screenSize.height * 0.2,
                width: screenSize.width * 0.3,
                child: Image.network(
                  "https://imgs.search.brave.com/ImFHQTLYVnJzX7d4weLdLBsrTgwcRaKVnnM0p0pXDRo/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuc2Vla2xvZ28u/Y29tL2xvZ28tcG5n/LzY4LzIvcGhvdG8t/YWktbG9nby1wbmdf/c2Vla2xvZ28tNjgy/NjAzLnBuZz92PTE5/Njg2ODY4MDMzNjkz/MDU2MDg",
                ),
              ),
            ),
            Text(
              "Welcome Back",
              style: GoogleFonts.inter(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Login to continue to your account',
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade500,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: screenSize.width * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        // Email or UserName input
                        TextFormField(
                          controller: userNameController,
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
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter email or username";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 16),
                        // Password input
                        TextFormField(
                          controller: passwordController,
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
                          validator: (value){
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            if (value.length < 8) {
                              return 'Password must be at least 6 characters';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            tristate: true,
                            value: value,
                            onChanged: (bool? value) {},
                          ),
                          Text("Remember me"),
                        ],
                      ),

                      Text("Forgot Password ?", style: GoogleFonts.inter(
                        color: Colors.deepPurple,
                      ),)
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: screenSize.height * 0.06,
                    child: FilledButton(
                        onPressed: (){
                          if (formKey.currentState!.validate()) {
                            // If the form is valid, proceed with login
                            print("Email: ${userNameController.text}");
                            print("Password: ${passwordController.text}");
                            userNameController.clear();
                            passwordController.clear();
                          }
                          // userNameController.clear();
                          // passwordController.clear();
                        },
                        style: FilledButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Text("Login", style: GoogleFonts.inter(
                            fontSize: 20,
                          ), textAlign: TextAlign.center,)),
                          Icon(CupertinoIcons.arrow_right),
                        ],
                      ),
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
                      Text("or continue with",style: GoogleFonts.inter(
                        fontSize: 16,
                        color: Colors.blueGrey,
                      ),),
                      Expanded(
                        child: Divider(
                          height: screenSize.height * 0.1,
                          color: Colors.blueGrey,
                          thickness: 1,
                          indent: 12,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: screenSize.height * 0.08,
                        width: screenSize.width * 0.18,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.deepPurple.shade50,
                                width: 2,
                              ),
                              color: Colors.white
                            ),
                          child: Image.network("https://img.icons8.com/?size=96&id=17949&format=png",
                          scale: 2,),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.08,
                        width: screenSize.width * 0.18,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.deepPurple.shade50,
                                width: 2,
                              ),
                              color: Colors.white
                          ),
                          child: Image.network("https://img.icons8.com/?size=96&id=c0DKfx1fatjh&format=png",
                            scale: 2,),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.08,
                        width: screenSize.width * 0.18,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.deepPurple.shade50,
                                width: 2,
                              ),
                              color: Colors.white
                          ),
                          child: Image.network("https://img.icons8.com/?size=96&id=uLWV5A9vXIPu&format=png",
                            scale: 2,),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 32,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have account?",style: GoogleFonts.inter(
                          color: Colors.grey.shade400,
                          fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),),
                      TextButton(onPressed: (){}, child: Text("Sign Up", style: GoogleFonts.inter(
                        color: Colors.deepPurple,
                        fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


