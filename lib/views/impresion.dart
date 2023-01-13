import 'package:flutter/material.dart';

class Impresion extends StatelessWidget {
  const Impresion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("texto prueba"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pushNamed("/home");
        },
      ),
    );
  }
}
