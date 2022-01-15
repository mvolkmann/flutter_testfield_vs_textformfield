import 'package:flutter/material.dart';

class Greet1 extends StatefulWidget {
  const Greet1({Key? key}) : super(key: key);

  @override
  _Greet1State createState() => _Greet1State();
}

class _Greet1State extends State<Greet1> {
  final tec = TextEditingController(text: 'Mark'); // initial value

  @override
  void initState() {
    super.initState();
    // This triggers a rebuild of the widget
    // so the suffixIcon can be reevaluated.
    tec.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: tec,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Name',
            suffixIcon: tec.text.isEmpty
                ? Container(width: 0)
                : IconButton(
                    icon: Icon(Icons.close, size: 18),
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
