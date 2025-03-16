import 'package:expenze_application/constents/colors.dart';
import 'package:expenze_application/screens/user_data_screen.dart';
import 'package:expenze_application/widgects/custom_button.dart';
import 'package:expenze_application/widgects/next_onbording_item.dart';
import 'package:expenze_application/widgects/onbording_item.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  final PageController _controller = PageController();

  //edit custom button name
  bool showDetailesPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView(
                  onPageChanged: (value) {
                    setState(() {
                      showDetailesPage = value == 3;
                    });
                  },
                  controller: _controller,
                  children: [
                    OnbordingItem(),
                    NextOnbordingItem(
                      imageUrl: "assets/images/onboard_1.png",
                      maintitle: "Gain total control\nof your money",
                      discription:
                          "Become your own money manager\nand make every cent count",
                    ),
                    NextOnbordingItem(
                      imageUrl: "assets/images/onboard_3.png",
                      maintitle: "Know where your\nmoney goes",
                      discription:
                          "Track your transaction easily,\ncategories and financial report ",
                    ),
                    NextOnbordingItem(
                      imageUrl: "assets/images/onboard_2.png",
                      maintitle: "Planning ahead",
                      discription:
                          "Setup your budget for each category\nso you in control",
                    ),
                  ],
                ),

                //page indicater
                Container(
                  alignment: Alignment(0, 0.67),
                  child: SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: ExpandingDotsEffect(
                      activeDotColor: kMainColor,
                      dotColor: kGrey,
                    ),
                  ),
                ),

                Positioned(
                  bottom: 70,
                  left: 40,
                  right: 40,
                  child:
                      showDetailesPage
                          ? GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UserDataScreen(),
                                ),
                              );
                            },
                            child: CustomButton(
                              btnName:
                                  showDetailesPage ? "Get Started" : "Next",
                              btnColor: kMainColor,
                            ),
                          )
                          : GestureDetector(
                             onTap: () {
                              _controller.animateToPage(
                                _controller.page!.toInt() + 1,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: CustomButton(
                              btnName:
                                  showDetailesPage ? "Get Started" : "Next",
                              btnColor: kMainColor,
                            ),
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
