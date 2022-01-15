import 'package:flutter/material.dart';

class Greet2 extends StatefulWidget {
  const Greet2({Key? key}) : super(key: key);

  @override
  _Greet2State createState() => _Greet2State();
}

class _Greet2State extends State<Greet2> {
  var name = 'Mark'; // initial value

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Name',
            suffixIcon: IconButton(
              icon: Icon(Icons.close),
              onPressed: () => setState(() => name = ''),
            ),
          ),
          initialValue: name,
          onChanged: (String value) {
            setState(() => name = value);
          },
        ),
        Text(name.isEmpty ? '' : 'Hello, $name!'),
      ],
    );
  }
}
