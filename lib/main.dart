import 'package:flutter/material.dart';
import 'package:nock/presentation/Login/view/add_details.dart';
import 'package:nock/presentation/Login/view/get_started.dart';
import 'package:nock/presentation/signup/vIew/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: SignUp());
  }
}
