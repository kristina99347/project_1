import 'package:flutter/material.dart';
import 'package:project_1/screens/login.dart';
 // pastikan nama file LoginPage sesuai

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Login',
      debugShowCheckedModeBanner: false,
      home: const   LoginPage(), // ini yang menentukan halaman awal
    );
  }
}
