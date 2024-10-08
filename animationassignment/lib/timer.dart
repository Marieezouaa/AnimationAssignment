import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

  //time
  String _now = "";
  Timer? _everySecond;
  int _countdown = 10;

  //BEGINNING OF TIMER RELATED FUNCTIONS
  void _countDownTimer(int seconds) {
    _countdown = 10;

    _everySecond = Timer.periodic(Duration(seconds: seconds), (Timer t) {
      setState(() {
        if (_countdown > 0) {
          _countdown--;
          if (hungerLevel < 100) {
            hungerLevel += 15;
          }
          _now = '$petName is $mood\n Current Timer: $_countdown';
        } else {
          t.cancel();
          if (happinessLevel > 70) {
            _now = "Winner";
          } else if (happinessLevel >= 30 && happinessLevel <= 70) {
            _now = "Meh";
          } else {
            _now = "GAME OVER";
          }
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _now = '$petName is $mood\n Current Timer: $_countdown';
    _countDownTimer(1);
  }

  void _restart() {
    _now = '$petName is $mood\n Current Timer: $_countdown';
    _countDownTimer(1);
  }

  TextStyle _getTextStyle() {
    if (_now.contains("Winner") && _countdown == 0) {
      return GoogleFonts.pixelifySans(
        color: const Color.fromARGB(255, 15, 136, 15),
        shadows: [
          _setShadow(-1.5, -1.5, Colors.white),
          _setShadow(1.5, -1.5, Colors.white),
          _setShadow(1.5, 1.5, Colors.white),
          _setShadow(-1.5, 1.5, Colors.white),
        ],
        fontSize: 60,
        fontWeight: FontWeight.bold,
      );
    } else if (_now.contains("Meh") && _countdown == 0) {
      return GoogleFonts.pixelifySans(
        color: const Color.fromARGB(255, 176, 156, 46),
        shadows: [
          _setShadow(-1.5, -1.5, Colors.white),
          _setShadow(1.5, -1.5, Colors.white),
          _setShadow(1.5, 1.5, Colors.white),
          _setShadow(-1.5, 1.5, Colors.white),
        ],
        fontSize: 60,
        fontWeight: FontWeight.bold,
      );
    } else if (_now.contains("GAME OVER") && _countdown == 0) {
      return GoogleFonts.pixelifySans(
        color: const Color.fromARGB(255, 161, 8, 8),
        shadows: [
          _setShadow(-1.5, -1.5, Colors.black),
          _setShadow(1.5, -1.5, Colors.black),
          _setShadow(1.5, 1.5, Colors.black),
          _setShadow(-1.5, 1.5, Colors.black),
        ],
        fontSize: 60,
        fontWeight: FontWeight.bold,
      );
    } else {
      return GoogleFonts.pixelifySans(
        color: const Color.fromARGB(255, 253, 253, 253),
        shadows: [
          _setShadow(-1.5, -1.5, Colors.black),
          _setShadow(1.5, -1.5, Colors.black),
          _setShadow(1.5, 1.5, Colors.black),
          _setShadow(-1.5, 1.5, Colors.black),
        ],
        fontSize: 30.0,
        fontWeight: FontWeight.w500,
      );
    }
  }

            Text(
              _now,
              style: _getTextStyle(),
            ),