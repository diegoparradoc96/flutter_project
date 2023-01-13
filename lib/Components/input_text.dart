import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  const InputText({super.key});

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Codigo",
            ),
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}

class InputDescription extends StatefulWidget {
  const InputDescription({super.key});

  @override
  State<InputDescription> createState() => _InputDescriptionState();
}

class _InputDescriptionState extends State<InputDescription> {
  var descripcion = "";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Descripcion",
            ),
            onChanged: (value) {
              setState(() {
                descripcion = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
