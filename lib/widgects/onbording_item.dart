import 'package:expenze_application/constents/colors.dart';
import 'package:flutter/material.dart';

class OnbordingItem extends StatelessWidget {
  const OnbordingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/logo.png", width: 100, fit: BoxFit.cover),
        SizedBox(height: 20),
        Text(
          "Ezpenze",
          style: TextStyle(
            color: kMainColor,
            fontSize: 35,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
