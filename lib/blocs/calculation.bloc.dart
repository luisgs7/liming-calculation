import 'package:flutter/material.dart';

class Calculation {
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

  Calculate() {
    double ca = double.parse(caController.text);
    double mg = double.parse(mgController.text);
    double hAl = double.parse(hAlController.text);
    double k = double.parse(kController.text);
    double na = double.parse(naController.text);
    double v2 = double.parse(v2Controller.text);
    double prnt = double.parse(prntController.text);
    double r$T = double.parse(r$TonController.text);
    double qtdH = double.parse(qtdHaController.text);

    double sb;
    double t;
    double v1;

    double nc;
    double iHa;
    double iTotal;

    sb = ca + mg + na + k;

    t = (hAl + sb);

    nc = t * (v2 - v1) / prnt;

    iHa = nc * r$T;

    iTotal = iHa * qtdH;

    result = "Colinas";
    //  "NC/ha: ${nc.toStringAsPrecision(2)} Ton/ha /n R\$ ${iHa.toStringAsPrecision(2)} /n R\$/Total ${iTotal.toStringAsPrecision(2)}";
  }
}
