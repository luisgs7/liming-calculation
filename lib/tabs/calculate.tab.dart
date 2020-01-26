import 'dart:ffi';

import 'package:flutter/material.dart';

class calculate extends StatelessWidget {
  final caController = TextEditingController();
  final mgController = TextEditingController();
  final hAlController = TextEditingController();
  final kController = TextEditingController();
  final naController = TextEditingController();
  final v2Controller = TextEditingController();
  final prntController = TextEditingController();
  final r$TonController = TextEditingController();
  final qtdHaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 15, 70, 20),
        child: ListView(
          children: <Widget>[
            buildTextFormField("Ca", caController),
            Divider(),
            buildTextFormField("Mg", mgController),
            Divider(),
            buildTextFormField("H+AL", hAlController),
            Divider(),
            buildTextFormField("K", kController),
            Divider(),
            buildTextFormField("Na", naController),
            Divider(),
            buildTextFormField("V2", v2Controller),
            Divider(),
            buildTextFormField("PRNT", prntController),
            Divider(),
            buildTextFormField("R\$/Ton", r$TonController),
            Divider(),
            buildTextFormField("Quantidade de ha", qtdHaController),
          ],
        ),
      ),
    );
  }
}

Widget buildTextFormField(String prefix, TextEditingController textEC) {
  return TextFormField(
    controller: textEC,
    decoration: InputDecoration(labelText: prefix),
    keyboardType: TextInputType.numberWithOptions(decimal: true),
    style: TextStyle(fontSize: 18.0),
  );
}

/*

TextField(
              controller: hAlController,
              decoration: InputDecoration(
                labelText: 'Ca',
              ),
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
              ),
            ),
            TextField(
              controller: hAlController,
              decoration: InputDecoration(
                labelText: 'Ca',
              ),
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
              ),
            ),
*/
