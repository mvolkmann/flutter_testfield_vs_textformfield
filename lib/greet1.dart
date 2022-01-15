import 'package:flutter/material.dart';

class Greet1 extends StatefulWidget {
  const Greet1({Key? key}) : super(key: key);

  @override
  _Greet1State createState() => _Greet1State();
}

class _Greet1State extends State<Greet1> {
  final tec = TextEditingController(text: 'Mark'); // initial value

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: tec,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Name',
            suffixIcon: IconButton(
              icon: Icon(Icons.close),
              onPressed: () => setState(() => tec.text = ''),
            ),
          ),
        ),
        // This is needed to listen for changes in the TextEditingController.
        ValueListenableBuilder<TextEditingValue>(
          valueListenable: tec,
          builder: (context, value, child) {
            return Text(tec.text.isEmpty ? '' : 'Hello, ${tec.text}!');
          },
        ),
      ],
    );
  }
}
