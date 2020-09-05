import 'package:flutter/material.dart';
import 'LabMain.dart';

class ExpListC extends StatelessWidget {
  final experiment = [
    ['Linear Expansion Using Heat', 'Ohm\'s Law'],
    ['Chemical Analysis of Ammonium Sulphate', 'Chemical Equillibrium']
  ];
  ExpListC(this.i);
  final int i;
  @override
  Widget build(BuildContext context) {
    return (ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text(experiment[i][0]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Lab(experiment[i][0]),
                ),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: FlutterLogo(),
            title: Text(experiment[i][1]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Lab(experiment[i][1]),
                ),
              );
            },
          ),
        ),
      ],
    ));
  }
}
