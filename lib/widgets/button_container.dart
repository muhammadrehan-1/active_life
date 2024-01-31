import 'package:flutter/material.dart';

import '../colors.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({super.key, required this.textOfButton});

  final String textOfButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.06,
      padding: const EdgeInsets.symmetric(horizontal: 76, vertical: 16),
      decoration: ShapeDecoration(
        color: yellowColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        shadows: const [
          BoxShadow(
            color: purpleShadow,
            blurRadius: 30,
            offset: Offset(0, 10),
            spreadRadius: 0,
          )
        ],
      ),
      child: Text(
        textOfButton,
        style: const TextStyle().copyWith(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.14,
        ),
      ),
    );
  }
}
