import 'package:flutter/material.dart';
import 'easy_text_field.dart';

class Greet3 extends StatefulWidget {
  const Greet3({Key? key}) : super(key: key);

  @override
  _Greet3State createState() => _Greet3State();
}

class _Greet3State extends State<Greet3> {
  var name = 'Mark';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EasyTextField(
          label: 'Name',
          value: name,
          onChanged: (String value) {
            setState(() => name = value);
          },
        ),
        Text(name.isEmpty ? '' : 'Hello, $name!'),
      ],
    );
  }
}
