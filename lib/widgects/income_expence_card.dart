import 'package:expenze_application/constents/colors.dart';
import 'package:flutter/material.dart';

class IncomeExpenceCard extends StatefulWidget {
  final Color bgColor;
  final String title;
  final String amount;
  final String imageUrl;
  const IncomeExpenceCard({
    super.key,
    required this.bgColor,
    required this.title,
    required this.imageUrl,
    required this.amount,
  });

  @override
  State<IncomeExpenceCard> createState() => _IncomeExpenceCardState();
}

class _IncomeExpenceCardState extends State<IncomeExpenceCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.width * 0.15,
            width: MediaQuery.of(context).size.width * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kWhite,
            ),
            child: Image.asset(widget.imageUrl),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "\$${widget.amount}",
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
