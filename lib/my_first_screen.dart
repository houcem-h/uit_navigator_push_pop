import 'package:flutter/material.dart';

class MyFirstScreen extends StatelessWidget {
  const MyFirstScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              "Screen 1",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.teal
              ),
            ),
            RaisedButton(
              child: Text("Next Screen"),
              color: Colors.teal,
              textColor: Colors.white,
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}

