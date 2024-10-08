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
  String item7 = "pumpkin.png";
  String item8 = "rat.png";
  String item9 = "skull.png";

  //END OF STYLES
  Future<void> _playEffect(String asset) async {
    await _effectPlayer.setAsset(asset);
    _effectPlayer.play();
  }
  //to call use "_playEffect('assets/jumpscare.mp3');""

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
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 60.0,
          ),
          children: [
            Image.asset("assets/images/" + item1),
            Image.asset("assets/images/" + item2),
            Image.asset("assets/images/" + item3),
            Image.asset("assets/images/" + item4),
            Image.asset("assets/images/" + item5),
            Image.asset("assets/images/" + item6),
            Image.asset("assets/images/" + item8),
            Image.asset("assets/images/" + item9),
          ],
        )
      ),
    );
  }
}
