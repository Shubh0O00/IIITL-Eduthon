import 'package:flutter/material.dart';
import './ExpList.dart';

class Experiment extends StatelessWidget {
  final List subject = ['Physics', 'Chemistry'];
  Experiment(this.i);
  final int i;
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
          title: Text(subject[i]),
          backgroundColor: Colors.orangeAccent,
          automaticallyImplyLeading: true,
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          )),
      body: ExpListC(i),
    ));
  }
}
