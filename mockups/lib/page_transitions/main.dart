import 'package:flutter/material.dart';
import 'package:mockups/page_transitions/dest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mock Ups',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Page transitions',
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _elevatedButton(() {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 800),
                    pageBuilder: (context, animation, secondaryAnimation) => ScaleTransition(
                      scale: animation.drive(Tween(begin: 0, end: 1)),
                      child: const SecondPage(),
                    ),
                  ),
                );
              }, "Scale transition"),
              _elevatedButton(() {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 800),
                    pageBuilder: (context, animation, secondaryAnimation) => SlideTransition(
                      position: animation.drive(Tween(begin: const Offset(1, 0), end: const Offset(0, 0))),
                      child: const SecondPage(),
                    ),
                  ),
                );
              }, "Slide transition"),
              _elevatedButton(() {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 800),
                    pageBuilder: (context, animation, secondaryAnimation) => FadeTransition(
                      opacity: animation.drive(Tween(begin: 0, end: 1)),
                      child: const SecondPage(),
                    ),
                  ),
                );
              }, "Fade transition"),
              _elevatedButton(() {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 800),
                    pageBuilder: (context, animation, secondaryAnimation) => RotationTransition(
                      turns: animation.drive(Tween(begin: 0.75, end: 1)),
                      child: const SecondPage(),
                    ),
                  ),
                );
              }, "Rotation transition"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _elevatedButton(onPressed, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 16)),
      ),
    );
  }
}
