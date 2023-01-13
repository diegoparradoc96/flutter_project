import 'package:flutter/material.dart';

import "views/home.dart";
import "views/impresion.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Main",
      home: const Home(),
      routes: {
        "/home": (context) => const Home(),
        "/impresion": (context) => const Impresion(),
      },
    );
  }
}
