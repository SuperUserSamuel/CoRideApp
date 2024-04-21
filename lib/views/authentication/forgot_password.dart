import 'package:corideapp/views/authentication/signup.dart';
import 'package:flutter/material.dart';

import '../../widgets/my_button.dart';
import '../../widgets/my_textfield.dart';


class ForgotPasswordPage extends StatelessWidget {
  ForgotPasswordPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    void signUserIn() {  Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => SignUpPage()),
    );}

    return Scaffold(
      // backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: ListView(
              children : [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),

                    // logo
                    const Icon(
                      Icons.lock,
                      size: 100,
                    ),

                    const SizedBox(height: 50),

                    // welcome back, you've been missed!
                    Text(
                      'Forgot Your Password? Enter Your Username/Email inorder to Reset Your Password',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 25),

                    // username textfield
                    MyTextField(
                      controller: usernameController,
                      hintText: 'Username/Email',
                      obscureText: false,
                    ),


                    const SizedBox(height: 25),

                    // sign in button
                    MyButton(
                      onTap: signUserIn,
                    ),

                    const SizedBox(height: 50),

                  ],
                ),
              ]
          ),
        ),
      ),
    );
  }
}
