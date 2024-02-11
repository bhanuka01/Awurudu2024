import 'package:awurudu/window/screen1.dart';
import 'package:awurudu/window/timer.dart';
import 'package:flutter/material.dart';

import 'about.dart';
import 'colorTile.dart';
import 'itemList.dart';

class Bhanu extends StatelessWidget {
  const Bhanu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Scrolviwe(),
    );
  }
}

class Scrolviwe extends StatelessWidget {
  const Scrolviwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/back5.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            "අවුරුදු 2024",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => About(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.account_box,
                  color: Colors.white,
                  size: 35,
                ))
          ],
          backgroundColor: Colors.transparent,
        ),
        // backgroundColor:Colors.greenAccent,
        body: SafeArea(
          child: CustomScrollView(
            slivers: ItemList.itemList,
          ),
        ),
      ),
    );
  }
}

class CardsonWindow extends StatelessWidget {
  const CardsonWindow(this.year, this.month, this.day, this.hours, this.min,
      {required this.imageBack,
      required this.title,
      required this.date,
      required this.visible,
      required this.cloth,
      required this.dir,
      required this.eat,
      super.key});

  final String imageBack;
  final String title;
  final String date;
  final bool visible;
  final String cloth;
  final String dir;
  final String eat;
  final int year;
  final int month;
  final int day;
  final int hours;
  final int min;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen1(year, month, day, hours, min,
                      imageBack, title, date, visible, cloth, dir, eat),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageBack),
                  fit: BoxFit.fitWidth,
                ),
              ),
              // height: double.infinity,
              // color: Color(0xFF0F54D3),
              child: Container(
                color: ColorTile.backCard,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 30,
                            color: ColorTile.title,
                            fontWeight: FontWeight.w600,
                            shadows: [
                              Shadow(
                                offset: const Offset(3.0, 2.0),
                                //position of shadow
                                blurRadius: 3.0,
                                //blur intensity of shadow
                                color: Colors.black.withOpacity(
                                    0.8), //color of shadow with opacity
                              ),

                              //add more shadow with different position offset here
                            ]),
                      ),
                      Text(
                        date,
                        style: TextStyle(
                            fontSize: 30,
                            color: ColorTile.date,
                            fontWeight: FontWeight.w500,
                            shadows: [
                              Shadow(
                                offset: const Offset(2.0, 3.0),
                                //position of shadow
                                blurRadius: 3.0,
                                //blur intensity of shadow
                                color: Colors.black.withOpacity(
                                    0.8), //color of shadow with opacity
                              ),

                              //add more shadow with different position offset here
                            ]),
                      ),
                      Timer1(year, month, day, hours, min)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
