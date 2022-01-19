import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _isSelected = !_isSelected;
                });
              },
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: const Color(0xeb760b0b),
                  ),
                ),
                child: _isSelected? const Icon(
                  Icons.check,
                  size: 17,
                  color: Color(0xeb164e44),
                ): null
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(widget.text),
          ],
        ),
      ],
    );
  }
}
