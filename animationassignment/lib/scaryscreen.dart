import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animationassignment/imageButtons.dart';
import 'dart:async';

class Scaryscreen extends StatefulWidget {
  const Scaryscreen({super.key});

  @override
  State<Scaryscreen> createState() {
    return _ScaryscreenState();
  }
}

class _ScaryscreenState extends State<Scaryscreen> {
  String petName = "Pickels";
  int happinessLevel = 50;
  int hungerLevel = 50;
  String mood = "Neutral";
  int red = 255;
  int green = 255;
  int blue = 255;

  //images
  String backgroundPlaceholder = "bookshelfbg.png";
  String item1 = "books.png";
  String item2 = "books2.png";
  String item3 = "books3.png";
  String item4 = "candles.png";
  String item5 = "hangingbat.png";
  String item6 = "jackolantern.png";
  String item7 = "pumpkin.png";
  String item8 = "rat.png";
  String item9 = "skull.png";

  //END OF TIMER RELATED FUNCTIONS
  buttonFunction() {}
  //BEGINNING OF STYLES
  Shadow _setShadow(double pointOne, double pointTwo, Color color) {
    return Shadow(
        // bottomLeft
        offset: Offset(pointOne, pointTwo),
        color: color);
  }

  Widget imageButtons(String imagePath, void Function()? buttonFunction) {
    return Container(
        width: 100,
        height: 100,
        padding: const EdgeInsets.all(0),
        child: ElevatedButton(
          onPressed: buttonFunction,
          style: ElevatedButton.styleFrom(
            shape: const ContinuousRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
          child: const Text(""),
        ));
  }

  //END OF STYLES

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Digital Pet',
          style: GoogleFonts.pixelifySans(
            color: const Color.fromARGB(255, 222, 214, 214),
            shadows: [
              _setShadow(-1.5, -1.5, Colors.black),
              _setShadow(1.5, -1.5, Colors.black),
              _setShadow(1.5, 1.5, Colors.black),
              _setShadow(-1.5, 1.5, Colors.black),
            ],
            fontSize: 40.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/" + backgroundPlaceholder),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // imageButtons("assets/images/bookshelfbg.png",   buttonFunction,),

            Image.asset(
              "assets/images/bookshelfbg.png",
              width: 300,
              color: Color.fromRGBO(red, green, blue, 1),
              colorBlendMode: BlendMode.modulate,
              key: UniqueKey(), // Forces the widget to reload the image
            ),

            // Text(
            //   'Name: $petName',
            //   style: TextStyle(fontSize: 20.0),
            // ),
            const SizedBox(height: 16.0),
            Text(
              'Happiness Level: $happinessLevel',
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Hunger Level: $hungerLevel',
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 32.0),
          ],
        ),
      ),
    );
  }
}
