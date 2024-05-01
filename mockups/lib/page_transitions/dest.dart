import 'package:flutter/material.dart';
import 'package:mockups/facebook/constants/colors.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(backgroundColor: Colors.blue[100], foregroundColor: black),
    );
  }
}
