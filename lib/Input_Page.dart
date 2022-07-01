// import 'dart:html';

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Colors.deepPurple,
                  ),
                ),
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(),
                ),
                Expanded(
                  child: ReusableCard(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.pinkAccent,
              margin: EdgeInsets.only(top: 10.0),
              height: 25.0,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour});

  final Color colour; // here colour is the instance variable
  // yaha hum const keyword nahi use kar sakte kyu ki const ke case main hume value pehle hi declare karni padhti hain..aur
  // final keyword ke case main hum use baad main as in app running ke time bhi assign kar sakte hain.
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.0,
      width: 180.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
