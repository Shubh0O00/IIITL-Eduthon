import 'package:SimulatorAPP/EXPANSION/thermalTheory.dart';
import 'package:flutter/material.dart';
import './LabSim.dart';
import './OHM/ohmTheory.dart';
import './EXPANSION/thermalTheory.dart';

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
          Shubham(s),
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

class Shubham extends StatelessWidget {
  Shubham(this.s);
  final s;
  @override
  Widget build(BuildContext context) {
    if (s == 'Ohm\'s Law') {
      return OhmTheory();
    } else if (s == 'Chemical Equillibrium') {
      return Text('Coming Soon');
    } else if (s == 'Linear Expansion Using Heat') {
      return ThermalTheory();
    } else if (s == 'Chemical Analysis of Ammonium Sulphate') {
      return Text('Coming Soon');
    } else {
      return Text('Error');
    }
  }
}
