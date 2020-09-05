import 'package:flutter/material.dart';
import './Experiment.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Column(
      children: <Widget>[
        Container(
          child: RaisedButton(
            child: Image.asset('assets/physics.png'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Experiment(0)));
            },
            disabledColor: Colors.redAccent,
            color: Colors.red,
          ),
          width: double.infinity,
          margin: const EdgeInsets.all(30.0),
          padding: const EdgeInsets.all(20.0),
        ),
        Container(
          child: RaisedButton(
            child: Image.asset('assets/chemistry.png'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Experiment(1)));
            },
            disabledColor: Colors.blueAccent,
            color: Colors.blue,
          ),
          width: double.infinity,
          margin: const EdgeInsets.all(30.0),
          padding: const EdgeInsets.all(20.0),
        ),
      ],
    ));
  }
}
