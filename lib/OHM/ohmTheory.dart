import 'package:flutter/material.dart';

class OhmTheory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Objective:',
          style: TextStyle(fontSize: 30),
        ),
        Text(
          'The objective of this lab is to determine the resistance of several resistors by applying Ohm’s Law.\n',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          'Apparatus:',
          style: TextStyle(fontSize: 30),
        ),
        Text(
          '\t\t\tAmeter\n\t\t\tVoltmeter\n\t\t\tWire\n\t\t\tBattery\n\t\t\tResistor\n',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          'Theory:',
          style: TextStyle(fontSize: 30),
        ),
        Text(
          '\tOhm’s Law states that the current, I, that flows in a circuit is directly proportional to the voltage, V , across the circuit and inversely proportional to the resistance, R, of the circuit:',
          style: TextStyle(fontSize: 20),
        ),
        Center(child: Image.asset('assets/ohm_eqn.png')),
        Text(
          'In this experiment, the current flowing through a resistor will be measured as the voltage across the resistor is varied. From the graph of this data, the resistance is determined for Ohmic resistors (Ri, i = 1, 2, 3). ',
          style: TextStyle(fontSize: 20),
        ),
      ],
    ));
  }
}
