import 'package:flutter/material.dart';
import './LabSim.dart';

class Lab extends StatelessWidget {
  Lab(this.s);
  final s;
  final report = {
    'Linear Expansion Using Heat': [],
    'Ohm\'s Law': [],
    'Chemical Analysis of Ammonium Sulphate': [],
    'Chemical Equillibrium': []
  };
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
          title: Text(s),
          backgroundColor: Colors.orangeAccent,
          automaticallyImplyLeading: true,
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          )),
      body: ListView(
        padding: EdgeInsets.all(5.0),
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              'Aim: ' + s + '\n',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              'Apparatus: ' + s + '\n',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              'Theory: ' + s + '\n',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: RaisedButton(
              child: Text('Simulator'),
              disabledColor: Colors.red,
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Sim(s)));
              },
            ),
          )
        ],
      ),
    ));
  }
}
