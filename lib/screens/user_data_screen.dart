import 'package:expenze_application/constents/colors.dart';
import 'package:expenze_application/screens/onbording_screen.dart';
import 'package:expenze_application/widgects/custom_button.dart';
import 'package:flutter/material.dart';

class UserDataScreen extends StatefulWidget {
  const UserDataScreen({super.key});

  @override
  State<UserDataScreen> createState() => _UserDataScreenState();
}

class _UserDataScreenState extends State<UserDataScreen> {
  //foe the checkbox
  bool _rememberMe = false;

  //form key foer the  form validations
  final _formKey = GlobalKey<FormState>();

  //text box controllers
  final TextEditingController _nameTextControllor = TextEditingController();
  final TextEditingController _emailTextControllor = TextEditingController();
  final TextEditingController _passowrdTextControllor = TextEditingController();
  final TextEditingController _confirmPasswordTextControllor =
      TextEditingController();

  @override
  void dispose() {
    _nameTextControllor.dispose();
    _emailTextControllor.dispose();
    _passowrdTextControllor.dispose();
    _confirmPasswordTextControllor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OnbordingScreen(),
                      ),
                    );
                  },
                  child: Icon(Icons.arrow_back, size: 30, weight: 30),
                ),
                SizedBox(height: 30),
                Text(
                  "Enter your\nPersonal Details",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 30),

                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter the name";
                          }
                          return null;
                        },
                        controller: _nameTextControllor,
                        decoration: InputDecoration(
                          hintText: "User name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),

                          contentPadding: EdgeInsets.symmetric(
                            vertical: 17,
                            horizontal: 15,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter the emaill";
                          }
                          return null;
                        },
                        controller: _emailTextControllor,
                        decoration: InputDecoration(
                          hintText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),

                          contentPadding: EdgeInsets.symmetric(
                            vertical: 17,
                            horizontal: 15,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter the password";
                          }
                          return null;
                        },
                        controller: _passowrdTextControllor,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),

                          contentPadding: EdgeInsets.symmetric(
                            vertical: 17,
                            horizontal: 15,
                          ),
                        ),
                      ),

                      SizedBox(height: 20),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please re enter your password";
                          }
                          return null;
                        },
                        controller: _confirmPasswordTextControllor,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),

                          contentPadding: EdgeInsets.symmetric(
                            vertical: 17,
                            horizontal: 15,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Remember Me for the next time",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: kGrey,
                            ),
                          ),
                          Checkbox(
                            value: _rememberMe,
                            activeColor: kMainColor,
                            onChanged: (value) {
                              setState(() {
                                _rememberMe = value!;
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {}
                        },
                        child: CustomButton(
                          btnName: "Next",
                          btnColor: kMainColor,
                        ),
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
