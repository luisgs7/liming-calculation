import 'package:flutter/material.dart';

class Formulas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(12),
      child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Soma de Bases(cmolc/dm³)\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.justify,
              ),
              Text(
                "SB = Ca²+ Mg²+Na + K\n",
                style: TextStyle(fontSize: 19.0),
                textAlign: TextAlign.justify,
              ),
              Text(
                "Capacidade de Troca Cátions(T)\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.justify,
              ),
              Text(
                "T = (H+Al) + SB\nH+ Al (Hidrogênio mais Alumínio)",
                style: TextStyle(fontSize: 19.0),
                textAlign: TextAlign.justify,
              ),
              Text(
                "Saturação por base autal do solo\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.justify,
              ),
              Text(
                "V1 = SB / T * 100\n",
                style: TextStyle(fontSize: 19.0),
                textAlign: TextAlign.justify,
              ),
              Text(
                "Necessidade de Calagem\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.justify,
              ),
              Text(
                "NC (T/Ha) = T * (V2 - V1) / PRNT\n V1 (Saturação de base presente no solo)\n",
                style: TextStyle(fontSize: 19.0),
                textAlign: TextAlign.justify,
              ),
              Text(
                "Investimento por Hectare\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.justify,
              ),
              Text(
                "R\$/ha = NC * R\$/Ton\n",
                style: TextStyle(fontSize: 19.0),
                textAlign: TextAlign.justify,
              ),
              Text(
                "Investimento Total\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.justify,
              ),
              Text(
                "R\$/Total =  R\$/ha * Qtd ha\n",
                style: TextStyle(fontSize: 19.0),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
