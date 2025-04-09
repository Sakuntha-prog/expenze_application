import 'package:expenze_application/constents/colors.dart';
import 'package:expenze_application/services/user_services.dart';
import 'package:expenze_application/widgects/income_expence_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //for store the user name
  String userName = "";

  @override
  void initState() {
    //get the user name from the shaired preferences
    UserServices.getUserData().then((value) {
      setState(() {
        userName = value["userName"]!;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        
            //main colunm
            child: Column(
              children: [
                //colunm with gb color
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(82, 126, 61, 255),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: kMainColor, width: 4),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                "assets/images/user.jpg",
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "Wellcome $userName",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 90),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.notifications),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IncomeExpenceCard(
                            bgColor: Colors.green,
                            title: "Income",
                            amount: "1200",
                            imageUrl: "assets/images/income.png",
                          ),
                          IncomeExpenceCard(
                            bgColor: Colors.red,
                            title: "Expence",
                            amount: "300",
                            imageUrl: "assets/images/expense.png",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
