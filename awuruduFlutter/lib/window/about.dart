import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "I am Bhanuka Dilshan \nMathematics and Statistics\n(reading)\nin UOR\nMy Main Web Site",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              Text(
                "bhanu.eu.org",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: Colors.cyanAccent,
                ),
              ),
              Image(
                image: AssetImage('assets/about.jpg',),
                height: 400,

              ),

            ],
          ),
        ),
      ),
    );
  }
}
