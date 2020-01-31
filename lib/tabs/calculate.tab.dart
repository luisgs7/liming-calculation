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
      child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "\nUtilize apenas . (ponto) para casas decimais",
                style: TextStyle(color: Colors.redAccent, fontSize: 15.0),
              ),
              buildTextFormField("Ca (cmolc/dm³)", bloc.caController),
              buildTextFormField("Mg (cmolc/dm³)", bloc.mgController),
              buildTextFormField("H+AL (cmolc/dm³)", bloc.hAlController),
              buildTextFormField("K (cmolc/dm³)", bloc.kController),
              buildTextFormField("Na (cmolc/dm³)", bloc.naController),
              buildTextFormField("V2", bloc.v2Controller),
              buildTextFormField("PRNT", bloc.prntController),
              buildTextFormField("R\$/Ton", bloc.r$TonController),
              buildTextFormField("Quantidade de Ha", bloc.qtdHaController),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Text(
                    bloc.result,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0, top: 20.0),
                child: ButtonTheme(
                  height: 40.0,
                  minWidth: 300.0,
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Calculo Realizado com Sucesso'),
                          backgroundColor: Colors.blue,
                        ));
                        setState(() {
                          bloc.calculate();
                        });
                      } else {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Preencha todos os Valores!!!'),
                          backgroundColor: Colors.red,
                        ));
                        setState(() {
                          bloc.result = "Preenha todos os valores!!!";
                        });
                      }
                    },
                    child: Text(
                      "Calcular",
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                    color: Color(0xFF1D5D51),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0, top: 0.0),
                child: ButtonTheme(
                  height: 40.0,
                  minWidth: 300.0,
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        bloc.reset();
                      });
                    },
                    child: Text(
                      "Limpar",
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget buildTextFormField(String prefix, TextEditingController textEC) {
  return Container(
    child: Padding(
      padding: EdgeInsets.fromLTRB(
        30,
        5,
        30,
        8,
      ),
      child: TextFormField(
        decoration:
            InputDecoration(labelText: prefix, border: OutlineInputBorder()),
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
    ),
  );
}
