import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2b1615),
      body: Container(
        margin: EdgeInsets.only(top: 150.0),
        child: Column(
          children: [
            Image.asset("images/barber.png"),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
              decoration: BoxDecoration(
                color: Color(0xffdf711a),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                "Get a Stylish HairCut",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
