import 'package:flutter/material.dart';

import '../Components/input_text.dart';
import '../Components/buttons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var vari = "Nuevo";

  @override
  Widget build(BuildContext context) {
    const inputCodigo = InputText();
    const inputDescription = InputDescription();
    const button = Button();

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
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        height: 350,
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    vari,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  inputCodigo,
                  const SizedBox(
                    height: 10,
                  ),
                  inputDescription,
                  const SizedBox(
                    height: 10,
                  ),
                  button,
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return SimpleDialog(
                  title: const Text(
                    "¿Que desea hacer?",
                    textAlign: TextAlign.center,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ListTile(
                            title: const Text(
                              "Nuevo",
                              textAlign: TextAlign.center,
                            ),
                            onTap: () {
                              setState(() {
                                vari = "Nuevo";
                              });
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: const Text(
                              "Editar",
                              textAlign: TextAlign.center,
                            ),
                            onTap: () {
                              setState(() {
                                vari = "Editar";
                              });
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: const Text(
                              "Eliminar",
                              textAlign: TextAlign.center,
                            ),
                            onTap: () {
                              setState(() {
                                vari = "Eliminar";
                              });
                              Navigator.pop(context);
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                );
              });
        },
        child: const Icon(Icons.more_vert),
      ),
    );
  }
}
