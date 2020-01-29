import 'package:flutter/material.dart';

class Calculate extends StatefulWidget {
  @override
  _CalculateState createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  var caController = TextEditingController();
  var mgController = TextEditingController();
  var hAlController = TextEditingController();
  var kController = TextEditingController();
  var naController = TextEditingController();
  var v2Controller = TextEditingController();
  var prntController = TextEditingController();
  var r$TonController = TextEditingController();
  var qtdHaController = TextEditingController();
  String result = 'Colinas';

  String _calcular() {
    setState(() {
      double ca = double.parse(caController.text);
      double mg = double.parse(mgController.text);
      double hAl = double.parse(hAlController.text);
      double k = double.parse(kController.text);
      double na = double.parse(naController.text);
      double v2 = double.parse(v2Controller.text);
      double prnt = double.parse(prntController.text);
      double r$T = double.parse(r$TonController.text);
      double qtdH = double.parse(qtdHaController.text);

      double sb = 0;
      double t = 0;
      double v1 = 0;

      double nc = 0;
      double iHa = 0;
      double iTotal = 0;

      sb = ca + mg + na + k;

      t = (hAl + sb);

      v1 = (sb / t) * 100;

      nc = t * (v2 - v1) / prnt;

      iHa = nc * r$T;

      iTotal = iHa * qtdH;

/*       result = "Araguaina";   */
      //  "NC/ha: ${nc.toStringAsPrecision(2)} Ton/ha /n R\$ ${iHa.toStringAsPrecision(2)} /n R\$/Total ${iTotal.toStringAsPrecision(2)}";

      ca += mg +
          hAl +
          k +
          na +
          v2 +
          prnt +
          r$T +
          qtdH +
          sb +
          t +
          v1 +
          nc +
          iHa +
          iTotal +
          sb;

      result =
          "Nc/ton: ${nc.toStringAsPrecision(4)} \n Invest. Ha: R\$ ${iHa.toStringAsPrecision(5)} \n Invest. Total: R\$ ${iTotal.toStringAsPrecision(6)}";
    });
  }

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
            padding: EdgeInsets.all(20),
            child: Text(
              result,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 50.0, left: 50.0, bottom: 30.0),
            child: FlatButton(
              onPressed: () {
                setState(() {
                  _calcular();
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
      validator: (String value) {
        return value.contains("") ? 'Campo obrigatório' : null;
      },
    ),
  );
}
/*
  var caController = new TextEditingController();
  var mgController = new TextEditingController();
  var hAlController = new TextEditingController();
  var kController = new TextEditingController();
  var naController = new TextEditingController();
  var v2Controller = new TextEditingController();
  var prntController = new TextEditingController();
  var r$TonController = new TextEditingController();
  var qtdHaController = new TextEditingController();
  String result = "Ola"; 

  */
