import 'package:flutter/material.dart';
import 'package:loginscreen/responsive.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ResponsiveWidget.isSmallScreen(context)
        ? Scaffold(
            backgroundColor: const Color.fromARGB(255, 216, 229, 250),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: screenSize.width / 75),
                    // child: Image.asset(
                    //   "",
                    // ),
                  ),
                  SizedBox(
                    height: screenSize.width / 45,
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenSize.width / 1.5416,
                          bottom: screenSize.width * 0.01,
                        ),
                        child: Container(
                          height: screenSize.width * 1.3,
                          width: screenSize.width,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(
                                10,
                              ),
                            ),
                          ),
                          child: const SingleChildScrollView(
                            child: Column(
                              children: [
                                //Enter the Textfield other content her.........
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        : const Scaffold();
  }
}
