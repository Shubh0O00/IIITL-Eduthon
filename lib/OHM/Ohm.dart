import 'package:flutter/material.dart';

class OhmLaw extends StatefulWidget {
  @override
  _OhmLawState createState() => _OhmLawState();
}

class _OhmLawState extends State<OhmLaw> {
  int r = 0;
  double v = 0.0, i = 0.0;
  void buttonr1() {
    if (r != 0) {
      showAlertDialog(
          context, 'Can\'t change register in between an experiment.');
    } else {
      setState(() {
        r = 5;
      });
    }
  }

  void buttonr2() {
    if (r != 0) {
      showAlertDialog(
          context, 'Can\'t change register in between an experiment.');
    } else {
      setState(() {
        r = 10;
      });
    }
  }

  void buttonr3() {
    if (r != 0) {
      showAlertDialog(
          context, 'Can\'t change register in between an experiment.');
    } else {
      setState(() {
        r = 15;
      });
    }
  }

  void increasevoltbutton() {
    if (r == 0) {
      showAlertDialog(context, 'Please Select the register first.');
    } else {
      setState(() {
        v += 3.0;
        i = v / r;
      });
    }
  }

  void resetbutton() {
    setState(() {
      i = 0;
      v = 0;
      r = 0;
    });
  }

  //Alert box

  showAlertDialog(BuildContext context, String s) {
    // Create button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Alert!!"),
      content: Text(s),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return (ListView(
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
      children: <Widget>[
        Center(
            child: Text(
          'Choose a register!!\n',
          style: TextStyle(fontSize: 20),
        )),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                  color: Colors.blue, child: Text('R1'), onPressed: buttonr1),
              RaisedButton(
                  color: Colors.blue, child: Text('R2'), onPressed: buttonr2),
              RaisedButton(
                  color: Colors.blue, child: Text('R3'), onPressed: buttonr3),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(15),
          child: Image.asset('assets/circuit.png'),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'V = ' + v.toString() + ' Volts',
                style: TextStyle(fontSize: 25, backgroundColor: Colors.blue),
              ),
              Text(
                'I= ' + i.toString() + ' Ampere',
                style: TextStyle(fontSize: 25, backgroundColor: Colors.red),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(30),
          child: RaisedButton(
              padding: EdgeInsets.all(20),
              child: Text('Increase Voltage', style: TextStyle(fontSize: 25)),
              color: Colors.deepOrange,
              onPressed: increasevoltbutton),
        ),
        Container(
          child: Text(
            'After some variations click on the button below to draw the table and graph.',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: RaisedButton(
            padding: EdgeInsets.all(20),
            child: Text('Draw Table and Graph', style: TextStyle(fontSize: 25)),
            onPressed: null,
            color: Colors.deepOrange,
          ),
        ),
        Container(
          child: Text('\n\n\nYahan jaadu hoga\n\n'),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: RaisedButton(
            padding: EdgeInsets.all(15),
            child: Text('Take Quiz', style: TextStyle(fontSize: 20)),
            onPressed: null,
            color: Colors.deepOrange,
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: RaisedButton(
            padding: EdgeInsets.all(15),
            child: Text('Reset', style: TextStyle(fontSize: 20)),
            onPressed: resetbutton,
            color: Colors.red,
          ),
        ),
      ],
    ));
  }
}
