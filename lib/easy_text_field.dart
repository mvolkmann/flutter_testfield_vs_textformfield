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
        suffixIcon: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            setState(() => tec.text = '');
            widget.onChanged!('');
          },
        ),
      ),
      onChanged: widget.onChanged,
    );
  }
}
