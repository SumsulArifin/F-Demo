import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({super.key});

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("SignUp")),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}