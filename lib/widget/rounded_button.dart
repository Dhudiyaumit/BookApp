import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final double verticalPadding;
  final double fontSize;

  const RoundedButton({
    super.key,
    required this.text,
    this.fontSize = 16,
    this.verticalPadding = 16,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: null,
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(vertical: verticalPadding),
          padding:
          EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 30,
                color: Color(0xFF666666).withOpacity(.11),
              ),
            ],
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}
