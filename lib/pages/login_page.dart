import 'package:back_to_instagram/components/auth/auth_textfield.dart';
import 'package:back_to_instagram/components/default_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: [
          
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const Image(image: AssetImage('assets/images/test.png')),
                    const SizedBox(height: 50),
                    const Text("Josagram",
                        style: TextStyle(
                            fontSize: 50,
                            fontFamily: 'Title',
                            color: Colors.black)),
                    const SizedBox(height: 35),
                    AuthTextField(
                        hintText: "Phone number, username or email",
                        obscureText: false,
                        controller: emailController),
                    const SizedBox(height: 10),
                    AuthTextField(
                        hintText: "Password",
                        obscureText: true,
                        controller: passwordController),
                    Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                            onPressed: () {},
                            child: Text("Forgot password?",
                                style: TextStyle(
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold)))),
                    const SizedBox(height: 10),
                    DefaultButton(
                        color: Colors.lightBlue,
                        onTap: () {},
                        text: Text(
                          "Log in",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ", // Texto normal
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                      children: [
                        TextSpan(
                          text: 'Sign Up.',
                          style:
                              const TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.bold, fontSize: 16),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
