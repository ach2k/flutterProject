import 'package:firstflutter/components/my_button.dart';
import 'package:firstflutter/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

// text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(children: [
            const SizedBox(height: 50),

            // logo
            const Icon(
              Icons.lock,
              size: 100,
            ),

            const SizedBox(height: 50),
            // welcome back
            Text(
              'Welcome back for another learning experience!',
              style: TextStyle(
                color: Color.fromARGB(225, 97, 97, 97),
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            // username
            MyTextField(
              controller: usernameController,
              hintText: "Username",
              obscureText: false,
            ),

            const SizedBox(
              height: 25,
            ),
            // password
            MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),

            const SizedBox(
              height: 10,
            ),

            // forgot password?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            // sign in button
            MyButton(
              onTap: signUserIn,
            ),
            // or continue with

            // google + app sign in

            // not a member? reg now
          ]),
        ),
      ),
    );
  }
}
