import 'package:flutter/material.dart';
import 'package:flutter_chit_chat/views/sign_in.dart';
import 'package:flutter_chit_chat/views/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue.shade100,
        primarySwatch: Colors.blue,
      ),
      home: SignUpPage(),
    );
  }
}
