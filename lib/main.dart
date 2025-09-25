import 'package:flutter/material.dart';
import 'package:grab_go/screens/Welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grab n Go',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Suwannaphum", 
      ),
      home: const WelcomeScreen(),
    );
  }
}
