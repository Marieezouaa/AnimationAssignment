import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animationassignment/imageButtons.dart';
import 'dart:async';
import 'package:just_audio/just_audio.dart';

class Scaryscreen extends StatefulWidget {
  const Scaryscreen({super.key});

  @override
  State<Scaryscreen> createState() {
    return _ScaryscreenState();
  }
}

class _ScaryscreenState extends State<Scaryscreen> {
  //audio
  final AudioPlayer _effectPlayer = AudioPlayer();
  bool _isJumpScare = false;
  bool _showSuccess = false;

  //images
  String backgroundPlaceholder = "bookshelfbg.png";
  String item1 = "books.png";
  String item2 = "books2.png";
  String item3 = "books3.png";
  String item4 = "candles.png";
  String item5 = "hangingbat.png";
  String item6 = "jackolantern.png";

  String item7 = "rat.png";
  String item8 = "skull.png";
  String titlePlaceholder = "Spooky Hunt";

  //END OF STYLES
  Future<void> _playEffect(String asset) async {
    await _effectPlayer.setAsset(asset);
    _effectPlayer.play();
  }
  //to call use "_playEffect('assets/jumpscare.mp3');""

  Widget buttonFunction(String imagePath) {
    String chosenImage = "";
    String correctImage = "assets/images/" + item1;
    return InkWell(
      onTap: () {
        chosenImage = imagePath;

        if (chosenImage == correctImage) {
          sleep(Duration(seconds: 1));
          setState(() {
            titlePlaceholder = "Winner";
          });
        } else {
          _playEffect('assets/audio/jumpscare.mp3');
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          titlePlaceholder,
          style: GoogleFonts.pixelifySans(
            color: Colors.white,
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
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 25.4,
            ),
            children: [
              buttonFunction("assets/images/$item1"),
              buttonFunction("assets/images/$item8"),
              buttonFunction("assets/images/$item3"),
              buttonFunction("assets/images/$item6"),
              buttonFunction("assets/images/$item4"),
              buttonFunction("assets/images/$item2"),
              buttonFunction("assets/images/$item5"),
              buttonFunction("assets/images/$item7"),
            ],
          )),
    );
  }
}
