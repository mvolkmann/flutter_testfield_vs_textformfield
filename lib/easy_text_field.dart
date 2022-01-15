import 'package:flutter/material.dart';

class EasyTextField extends StatefulWidget {
  final String label;
  final ValueChanged<String>? onChanged;
  final String value;

  const EasyTextField({
    Key? key,
    required this.label,
    required this.onChanged,
    this.value = '',
  }) : super(key: key);

  @override
  _EasyTextFieldState createState() => _EasyTextFieldState();
}

class _EasyTextFieldState extends State<EasyTextField> {
  final tec = TextEditingController();

  @override
  void initState() {
    tec.text = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: tec,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: widget.label,
        suffixIcon: tec.text.isEmpty
            ? Container(width: 0)
            : IconButton(
                icon: Icon(Icons.close, size: 18),
                onPressed: () {
                  setState(() => tec.text = '');
                  // This causes a new value for
                  // the "value" parameter to be passed in
                  // which allows the suffixIcon to be reevaluated.
                  // Unlike in Greet1 there is no need to
                  // add a listener to the TextEditingController.
                  widget.onChanged!('');
                },
              ),
      ),
      keyboardType: TextInputType.number,
      onChanged: widget.onChanged,
    );
  }
}
