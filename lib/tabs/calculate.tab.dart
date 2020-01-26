import 'package:flutter/material.dart';

class Calculate extends StatelessWidget {
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
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: buildTextFormField("Ca", caController),
              ),
              Divider(
                indent: 20.0,
              ),
              Expanded(
                child: buildTextFormField("Mg", mgController),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: buildTextFormField("H+AL", hAlController),
              ),
              Divider(
                indent: 20.0,
              ),
              Expanded(
                child: buildTextFormField("K", kController),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: buildTextFormField("Na", naController),
              ),
              Divider(
                indent: 20.0,
              ),
              Expanded(
                child: buildTextFormField("V2", v2Controller),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: buildTextFormField("PRNT", prntController),
              ),
              Divider(
                indent: 20.0,
              ),
              Expanded(
                child: buildTextFormField("R\$/Ton", r$TonController),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: buildTextFormField("Quantidade de Ha", qtdHaController),
              ),
              Divider(indent: 170.0),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 50.0, left: 50.0, bottom: 30.0),
            child: FlatButton(
              onPressed: () {},
              child: Text(
                "Calcular",
                style: TextStyle(color: Colors.white, fontSize: 17.0),
              ),
              color: Color(0xFF1D5D51),
            ),
          )
        ],
      ),
    );
  }
}

Widget buildTextFormField(String prefix, TextEditingController textEC) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: TextFormField(
      controller: textEC,
      decoration: InputDecoration(labelText: prefix),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      style: TextStyle(fontSize: 17.0),
      validator: (String value) {
        return value.contains("") ? 'Campo obrigatório' : null;
      },
    ),
  );
}
