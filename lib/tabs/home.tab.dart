import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
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
                "O que é Calagem?\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.justify,
              ),
              Text(
                "Calagem é a aplicação de calcário no solo, a fim de eliminar os efeitos trazidos pela acidez que trazem grandes prejuízos nutricionais para as pastagens.\n",
                style: TextStyle(fontSize: 19.0),
                textAlign: TextAlign.justify,
              ),
              Text(
                "Como o calcário deve ser aplicado?\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.justify,
              ),
              Text(
                "Deverá ser aplicado a lanço, de modo mais uniforme possível\n",
                style: TextStyle(fontSize: 19.0),
                textAlign: TextAlign.justify,
              ),
              Text(
                "Qual o momento adequado para a sua aplicação?\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.justify,
              ),
              Text(
                "Preferencialmente no fim da estação chuvosa anterior ao plantio, ou cerca de 90 a 60 dias antes do plantio da pastagem.\n",
                style: TextStyle(fontSize: 19.0),
                textAlign: TextAlign.justify,
              ),
              Text(
                "Qual o calcário mais indicado?\n",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                textAlign: TextAlign.justify,
              ),
              Text(
                "Como os solos do cerrado apresentam, normalmente, teores baixos de magnésio(Mg), recomenda-se que, pelo menos, parte do calcário seja dolomítico ou magnesiano de forma que o teor desse nutriente no solo atinja o valor mínimo de 0,5  cmolc/dm³.\n",
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
