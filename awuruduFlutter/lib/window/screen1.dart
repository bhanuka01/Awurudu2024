import 'package:awurudu/window/timer.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1(this.year, this.month, this.day, this.hours, this.min,
      this.imageBack,
      this.title,
      this.date,
      this.visible,
      this.cloth,
  this.dir,
  this.eat,
      {super.key});

  final int year;
  final int month;
  final int day;
  final int hours;
  final int min;
  final String imageBack;
  final String title;
  final String date;
  final bool visible;
  final String cloth;
  final String dir;
  final String eat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/back6.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,

                    children: [
                      Container(
                        color: Color(0xFF1656DE),
                        // height: 200,
                        width: double.maxFinite,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            title,
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,

                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(imageBack),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        // color: Color(0xFF1656DE),
                        // height: 200,
                        width: double.maxFinite,
                        height: 250,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Timer1(year, month, day, hours, min),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,

                    children: [
                      Container(
                        color: Color(0xFF2E70FF),
                        // height: 200,
                        width: double.maxFinite,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                date,
                                style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),

                              Visibility(
                                visible: visible,
                                child: Text(
                                  cloth,textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: visible,
                                child: Text(
                                  dir,textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: visible,
                                child: Text(
                                  eat,textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
