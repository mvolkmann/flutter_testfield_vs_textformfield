import 'package:flutter/material.dart';
import 'greet1.dart';
import 'greet2.dart';
import 'greet3.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField vs. TextFormField',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField vs. TextFormField'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Greet1(),
              SizedBox(height: 20),
              Greet2(),
              SizedBox(height: 20),
              Greet3(),
            ],
          ),
        ),
      ),
    );
  }
}
