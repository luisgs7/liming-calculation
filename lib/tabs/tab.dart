import 'package:flutter/material.dart';
import 'package:liming_calculation/blocs/calculation.bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: Calculate(),
      ),
    );
  }
}

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildTextFormField("Quantidade de Ha", bloc.qtdHaController),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text('Processing Data'),
                    backgroundColor: Colors.blue,
                  ));
                }
                setState(() {
                  bloc.calcular();
                });
              },
              child: Text('Submit'),
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
      decoration: InputDecoration(labelText: prefix),
      controller: textEC,
      style: TextStyle(fontSize: 17.0),
      validator: (value) {
        if (value.isEmpty) {
          return 'Preencha este campo!';
        }
        return null;
      },
      keyboardType: TextInputType.numberWithOptions(decimal: true),
    ),
  );
}
