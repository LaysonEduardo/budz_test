import 'package:flutter/material.dart';

class BudzRadioButton extends StatelessWidget {
  final String currentValue;
  final String value;

  const BudzRadioButton({
    super.key,
    required this.currentValue,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 550,
      ),
      child: Row(
        children: [
          currentValue == value
              ? Icon(Icons.radio_button_checked)
              : Icon(Icons.radio_button_unchecked),
          Text(value)
        ],
      ),
    );
  }
}
