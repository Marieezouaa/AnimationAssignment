import 'package:flutter/material.dart';

class Imagebuttons extends StatelessWidget {
  const Imagebuttons({super.key});

  final double buttonSpace = 5.5;
  final double rowSpace = 15;

 

  Widget buttonFunction(String imagePath) {

      String chosenImage;
      String correctImage = "";
    return InkWell(
      onTap: () {
        chosenImage = imagePath;

        if(chosenImage == correctImage){
            //display text
          
        }else{
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
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(47.0),
            ),
            width: 402, //change this
            height: 250, //change this
          ),
          const Positioned(
            bottom: 15,
            left: 25,
            child: const Text("temp"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(),
    );
  }
}
