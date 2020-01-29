import 'package:flutter/material.dart';
import 'package:liming_calculation/blocs/calculation.bloc.dart';

class Calculate extends StatefulWidget {
  @override
  _CalculateState createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  Calculation bloc = new Calculation();
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
                child: buildTextFormField("Ca", bloc.caController),
              ),
              Divider(
                indent: 20.0,
              ),
              Expanded(
                child: buildTextFormField("Mg", bloc.mgController),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: buildTextFormField("H+AL", bloc.hAlController),
              ),
              Divider(
                indent: 20.0,
              ),
              Expanded(
                child: buildTextFormField("K", bloc.kController),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: buildTextFormField("Na", bloc.naController),
              ),
              Divider(
                indent: 20.0,
              ),
              Expanded(
                child: buildTextFormField("V2", bloc.v2Controller),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: buildTextFormField("PRNT", bloc.prntController),
              ),
              Divider(
                indent: 20.0,
              ),
              Expanded(
                child: buildTextFormField("R\$/Ton", bloc.r$TonController),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: buildTextFormField(
                    "Quantidade de Ha", bloc.qtdHaController),
              ),
              Divider(indent: 170.0),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              bloc.result,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 50.0, left: 50.0, bottom: 30.0),
            child: FlatButton(
              onPressed: () {
                setState(() {
                  bloc.calcular();
                });
              },
              child: Text(
                "Calcular",
                style: TextStyle(color: Colors.white, fontSize: 17.0),
              ),
              color: Color(0xFF1D5D51),
            ),
          ),
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
    ),
  );
}
