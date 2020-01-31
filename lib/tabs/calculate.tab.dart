import 'package:flutter/material.dart';
import 'package:liming_calculation/blocs/calculation.bloc.dart';

class Calculate extends StatefulWidget {
  @override
  CalculateState createState() {
    return CalculateState();
  }
}

class CalculateState extends State<Calculate> {
  final _formKey = GlobalKey<FormState>();
  Calculation bloc = new Calculation();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  buildTextFormField("Ca (cmolc/dm³)", bloc.caController),
                  buildTextFormField("Mg (cmolc/dm³)", bloc.mgController),
                  buildTextFormField("H+AL (cmolc/dm³)", bloc.hAlController),
                  buildTextFormField("K (cmolc/dm³)", bloc.kController),
                  buildTextFormField("Na (cmolc/dm³)", bloc.naController),
                  buildTextFormField("V2", bloc.v2Controller),
                  buildTextFormField("PRNT", bloc.prntController),
                  buildTextFormField("R\$/Ton", bloc.r$TonController),
                  buildTextFormField("Quantidade de Ha", bloc.qtdHaController),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      bloc.result,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(right: 50.0, left: 50.0, bottom: 30.0),
                    child: FlatButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('Calculo Realizado com Sucesso'),
                            backgroundColor: Colors.blue,
                          ));
                        } else {
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('Preencha todos os Valores!!!'),
                            backgroundColor: Colors.red,
                          ));
                        }
                        setState(() {
                          bloc.result = "Preenha todos os valores!!!";
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
            ],
          )
        ],
      ),
    );
  }
}

Widget buildTextFormField(String prefix, TextEditingController textEC) {
  return Padding(
    padding: EdgeInsets.fromLTRB(30, 5, 30, 10),
    child: TextFormField(
      decoration: InputDecoration(labelText: prefix),
      controller: textEC,
      style: TextStyle(fontSize: 17.0),
      validator: (value) {
        if (value.isEmpty) {
          return 'Preencha o valor de ${prefix}';
        }
        return null;
      },
      keyboardType: TextInputType.numberWithOptions(decimal: true),
    ),
  );
}

/*
class Calculate extends StatefulWidget {
  @override
  _CalculateState createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  final _formKey = GlobalKey<FormState>();
  Calculation bloc = new Calculation();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "\nCa, Mg, Na, K devem estar em cmolc/dm³",
                  style: TextStyle(fontSize: 15.0),
                )
              ],
            ),
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
      ),
    );
  }
}

Widget buildTextFormField(String prefix, TextEditingController textEC) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: TextFormField(
      decoration: InputDecoration(labelText: prefix),
      controller: textEC,
      style: TextStyle(fontSize: 17.0),
      validator: (value) {
        if (value.length == 0 || double.parse(value) == 0.0) {
          return ('Height is not valid. Height > 0.0');
        }
      },
      keyboardType: TextInputType.numberWithOptions(decimal: true),
    ),
  );
}


*/
