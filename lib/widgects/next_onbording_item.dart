import 'package:expenze_application/constents/colors.dart';
import 'package:flutter/material.dart';

class NextOnbordingItem extends StatelessWidget {
  final String imageUrl;
  final String maintitle;
  final String discription;

  const NextOnbordingItem({
    super.key,
    required this.imageUrl,
    required this.maintitle,
    required this.discription,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imageUrl, width: 300, fit: BoxFit.cover),
        const SizedBox(height: 20),
        Text(
          maintitle,
          style: TextStyle(
            color: kBlack,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Text(
          discription,
          style: TextStyle(
            color: kGrey,
            fontSize: 17,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
