import 'package:flutter/material.dart';

class Calculation {
  var caController = TextEditingController();
  var mgController = TextEditingController();
  var hAlController = TextEditingController();
  var kController = TextEditingController();
  var naController = TextEditingController();
  var v2Controller = TextEditingController();
  var prntController = TextEditingController();
  var r$TonController = TextEditingController();
  var qtdHaController = TextEditingController();
  String result = 'Preencha todos os Campos';

  String calcular() {
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

    v1 = (sb / t) * 100;

    nc = t * (v2 - v1) / prnt;

    iHa = nc * r$T;

    iTotal = iHa * qtdH;

    result =
        "Nc/ton: ${nc.toStringAsPrecision(4)} \n Invest. Ha: R\$ ${iHa.toStringAsPrecision(5)} \n Invest. Total: R\$ ${iTotal.toStringAsPrecision(6)}";
  }
}
