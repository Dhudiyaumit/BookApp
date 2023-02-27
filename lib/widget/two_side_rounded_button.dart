import 'package:flutter/material.dart';
import 'package:new_book/consttants.dart';

class TowSideRoundedButton extends StatelessWidget {
  final String text;
  final double radious;
  final Function press;

   TowSideRoundedButton({
    super.key,
    required this.text,
    this.radious = 29,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radious),
            bottomRight: Radius.circular(radious),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
