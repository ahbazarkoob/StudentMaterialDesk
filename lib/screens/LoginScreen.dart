import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smd/screens/MainPage.dart';
import 'package:smd/screens/RegisterScreen.dart';
import 'package:smd/theme/colors.dart';
import 'package:smd/widgets/button.dart';
import 'package:smd/widgets/header.dart';
import 'package:smd/widgets/textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  Color color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenClr,
      body: Column(
        children: [
          const Header(),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0, 2),
                    blurRadius: 15,
                    spreadRadius: 2,
                  ),
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0, 2),
                    blurRadius: 15,
                    spreadRadius: 2,
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: SizedBox(
                width: device.width,
                child: Column(
                  children: [
                    SizedBox(height: device.height * 0.025),
                    const Text(
                      'Hello Champ 🎖 ',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: device.height * 0.005),
                    const Text(
                      'Glad To Have You Onboard 🎓 ',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: device.height * 0.03),

                    //*  Text Fields Start Here

                    Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: device.width * 0.08),
                        child: TextInput(
                          controller: loginEmailController,
                          text: 'Email',
                          icon: FontAwesomeIcons.solidEnvelope,
                        )),
                    Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: device.width * 0.08),
                        child: TextInputObsec(
                          controller: loginPasswordController,
                          obsec: true,
                          text: 'Password',
                          icon: FontAwesomeIcons.key,
                        )),

                    //* Text Fields End Here

                    SizedBox(height: device.height * 0.02),
                    Button(
                      text: 'Login',
                      onPressed: () {},
                      color: greenClr,
                      width: device.width * 0.4,
                      fontSize: 16,
                    ),
                    SizedBox(height: device.height * 0.02),
                    SizedBox(
                      width: device.width * 0.6,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            color = orangeClr;
                          });
                          Timer(const Duration(seconds: 1), () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const RegisterScreen(),
                              ),
                            );
                          });
                        },
                        child: Center(
                          child: Text(
                            'Not Registered? SignUp',
                            style: TextStyle(color: color),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
