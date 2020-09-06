import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Graph extends StatelessWidget {
  Graph(this.x, this.y);
  final x, y;
  @override
  Widget build(BuildContext context) {
    return (Center(
        child: Container(
            child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                // Chart title
                title: ChartTitle(text: 'OHM\'s LAW'),
                tooltipBehavior: TooltipBehavior(enable: true),
//after this add a function to call list from this part
                series: <LineSeries<GraphC, double>>[
          LineSeries<GraphC, double>(
              dataSource: <GraphC>[
                GraphC(x[0], y[0]),
                GraphC(x[1], y[1]),
                GraphC(x[2], y[2]),
                GraphC(x[3], y[3]),
                GraphC(x[4], y[4]),
              ],
              xValueMapper: (GraphC cord, _) => cord.voltage,
              yValueMapper: (GraphC cord, _) => cord.current,
              // Enable data label
              dataLabelSettings: DataLabelSettings(isVisible: true))
        ]))));
  }
}

class GraphC {
  GraphC(this.voltage, this.current);
  final double voltage;
  final double current;
}
