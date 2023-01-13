import 'package:flutter/material.dart';

import '../Components/input_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const inputCodigo = InputText();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushNamed("/impresion");
          },
        ),
      ),
      body: Row(
        children: <Widget>[
          Column(
            children: const <Widget>[
              SizedBox(
                width: 40.0,
                height: 40.0,
                child: Text("Nuevo"),
              )
            ],
          ),
          Column(children: const <Widget>[
            SizedBox(
              width: 40.0,
              height: 40.0,
              child: Text("hola"),
            )
          ]),
        ],
        // mainAxisAlignment: MainAxisAlignment.start,
        // children: <Widget>[
        //   Container(
        //     constraints: const BoxConstraints(maxWidth: 200.0),
        //     child: inputCodigo,
        //   ),
        // ],
      ),
    );
  }
}
