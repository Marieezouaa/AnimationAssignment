import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animationassignment/imageButtons.dart';
import 'package:just_audio/just_audio.dart';
import 'dart:async';

class Scaryscreen extends StatefulWidget {
  const Scaryscreen({super.key});

  @override
  State<Scaryscreen> createState() {
    return _ScaryscreenState();
  }
}

class _ScaryscreenState extends State<Scaryscreen> {
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

  //END OF STYLES

  Widget buttonFunction(String imagePath) {
    String chosenImage = "";
    String correctImage = "assets/images/" + item1;
    return InkWell(
      onTap: () {
        chosenImage = imagePath;

        if (chosenImage == correctImage) {
          print("Button Works");
        } else {
          //play audio
        }
      },
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
              ),
              borderRadius: BorderRadius.circular(47.0),
            ),
            width: 402, //change this
            height: 250, //change this
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Spooky Hunt',
          style: GoogleFonts.pixelifySans(
            color: const Color.fromARGB(255, 222, 214, 214),
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
          child: GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 60.0,
              ),
              children: [
                buttonFunction("assets/images/$item1"),
                buttonFunction("assets/images/$item2"),
                buttonFunction("assets/images/$item3"),
                buttonFunction("assets/images/$item4"),
                buttonFunction("assets/images/$item5"),
                buttonFunction("assets/images/$item6"),
                buttonFunction("assets/images/$item8"),
                buttonFunction("assets/images/$item9"),
              ])),
    );
  }
}
