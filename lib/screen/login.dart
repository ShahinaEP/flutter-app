import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.c,
        children: [
          // const SizedBox(height: 70,),
           Center(
            child: Column(
              children: const [
                Text(
                  "Welcome Back !!!",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000000),
                    decoration: TextDecoration.none,
                  ),
                ),
                Text('Welcome back! Please enter your details',
                  style: TextStyle(
                    fontSize: 20
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
