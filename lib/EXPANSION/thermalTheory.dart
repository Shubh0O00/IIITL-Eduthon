import 'package:flutter/material.dart';

class ThermalTheory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Objective:',
          style: TextStyle(fontSize: 30),
        ),
        Text(
          'To observe and explain the effect of heating on rod (Linear Expansion).\n',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          'Apparatus:',
          style: TextStyle(fontSize: 30),
        ),
        Text(
          '\t\t\tA Metallic Rod\n\t\t\tHeating Arrangement\n\t\t\tClamp Stand\n\t\t\tMeasuring Scale\n',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          'Theory:',
          style: TextStyle(fontSize: 30),
        ),
        Text(
          '\tThermal expansion is large for gases, and relatively small, but not negligible, for liquids and solids.Linear thermal expansion is ΔL = αLΔT, where ΔL is the change in length L, ΔT is the change in temperature, and α is the coefficient of linear expansion, which varies slightly with temperature.',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          'In this experiment, the temperature of rod is increased in small steps and change in length is noted. From the graph of this data, the co-efficient of Linear Expansion is determined for used rod. ',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
