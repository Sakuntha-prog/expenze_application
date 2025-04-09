import 'package:flutter/widgets.dart';

enum IncomeCatagory { freelance, pasive, sales }

final Map<IncomeCatagory, String> IncomeCatagoryImage = {
  IncomeCatagory.freelance: "assets/images/freelance.png",
  IncomeCatagory.pasive: "assets/images/bill.png",
  IncomeCatagory.sales: "assets/images/salary.png",
};
final Map<IncomeCatagory, Color> IncomeCatagoryColors = {
  IncomeCatagory.freelance: Color.fromARGB(255, 126, 61, 255),
  IncomeCatagory.pasive: Color(0xff00A86B),
  IncomeCatagory.sales: Color(0xffFD3C4A),
};

class IncomeModel {
  final int id;
  final String title;
  final double amount;
  final IncomeCatagory catagory;
  final DateTime date;
  final DateTime time;
  final String description;

  IncomeModel({
    required this.id,
    required this.title,
    required this.amount,
    required this.catagory,
    required this.date,
    required this.time,
    required this.description,
  });
}
