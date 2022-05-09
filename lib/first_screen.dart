import 'package:flutter/material.dart';
import './second_screen.dart';

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
          children: <Widget>[
            const Text(
              "Screen 1",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.teal
              ),
            ),
            RaisedButton(
              child: const Text("Next Screen"),
              color: Colors.teal,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => MySecondScreen(title: title)
                  )
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

