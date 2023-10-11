import 'package:flutter/material.dart';

class AddDetails extends StatefulWidget {
  const AddDetails({super.key});

  @override
  State<AddDetails> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Add Details"),
      ),
    );
  }
}