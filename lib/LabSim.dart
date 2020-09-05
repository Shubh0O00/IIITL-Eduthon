import 'package:SimulatorAPP/EQUILLIBRIUM/equi.dart';
import 'package:flutter/material.dart';
import './OHM/Ohm.dart';
import './EQUILLIBRIUM/equi.dart';
import './EXPANSION/thermal.dart';
import './SALT/analysis.dart';

class Sim extends StatelessWidget {
  Sim(this.s);
  final String s;
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
        body: Shubh(s)));
  }
}

class Shubh extends StatelessWidget {
  Shubh(this.s);
  final s;
  @override
  Widget build(BuildContext context) {
    if (s == 'Ohm\'s Law') {
      return OhmLaw();
    } else if (s == 'Chemical Equillibrium') {
      return Equillibrium();
    } else if (s == 'Linear Expansion Using Heat') {
      return ThermalExp();
    } else if (s == 'Chemical Analysis of Ammonium Sulphate') {
      return SaltAnalysis();
    } else {
      return Text('Error');
    }
  }
}
