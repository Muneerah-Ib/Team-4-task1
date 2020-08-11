import 'package:ecx_forum_app/screens/sign_in.dart';
import 'package:ecx_forum_app/screens/sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ForumApp());
}

class ForumApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
