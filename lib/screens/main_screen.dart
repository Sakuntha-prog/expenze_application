import 'package:expenze_application/constents/colors.dart';
import 'package:expenze_application/screens/add_new.dart';
import 'package:expenze_application/screens/budget.dart';
import 'package:expenze_application/screens/home_screen.dart';
import 'package:expenze_application/screens/profile.dart';
import 'package:expenze_application/screens/transaction.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //Currrant Page index
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    //screens list
    final List<Widget> pages = [
      HomeScreen(),
      TransactionScreen(),
      AddNewScreen(),
      BudgetScreen(),
      ProfileScreen(),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kWhite,
        selectedItemColor: kMainColor,
        unselectedItemColor: kGrey,

        currentIndex: _currentPageIndex,
        onTap: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_circle_left_rounded),
            label: "Transaction",
          ),
          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: kMainColor,
              ),
              padding: EdgeInsets.all(20),
              child: Icon(Icons.add, color: Colors.white),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_friendly_sharp),
            label: "Budget",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_sharp),
            label: "profile",
          ),
        ],
      ),
      body: pages[_currentPageIndex],
    );
  }
}
