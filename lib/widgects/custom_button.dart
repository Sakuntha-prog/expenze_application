import 'package:expenze_application/constents/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnName;
  final Color btnColor;
  const CustomButton({
    super.key,
    required this.btnName,
    required this.btnColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: btnColor,
      ),
      child: Center(
        child: Text(
          btnName,
          style: TextStyle(
            color: kWhite,
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
