import 'package:flutter/material.dart';

class Imagebuttons extends StatelessWidget {
  const Imagebuttons({super.key});

  final double buttonSpace = 5.5;
  final double rowSpace = 15;

  Widget imageButtons(String imagePath, void Function()? buttonFunction) {
    return Container(
        width: 100,
        height: 100,
        padding: const EdgeInsets.all(0),
        child: ElevatedButton(
          
          onPressed: buttonFunction,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: const ContinuousRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
          ),
          child: const Text(""),
        ));
  }

  buttonFunction(String imagePath) {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 100,
                  padding: const EdgeInsets.all(10.0),
                  child: const FittedBox(
                    alignment: Alignment.bottomRight,
                    fit: BoxFit.scaleDown,
                    child: const Text(
                      "placeholer",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  padding: const EdgeInsets.all(15.0),
                  child: const FittedBox(
                    alignment: Alignment.bottomRight,
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "placeholer",
                      style: TextStyle(
                        fontSize: 75,
                        color: Colors.white38,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imageButtons("AC", () => buttonFunction("AC")),
              SizedBox(
                width: buttonSpace,
              ),
              imageButtons("+/-", () => buttonFunction("+/-")),
              SizedBox(
                width: buttonSpace,
              ),
              imageButtons("%", () => buttonFunction("%")),
              SizedBox(
                width: buttonSpace,
              ),
              imageButtons("÷", () => buttonFunction("÷")),
            ],
          ),
          SizedBox(
            height: rowSpace,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imageButtons("7", () => buttonFunction("7")),
              SizedBox(
                width: buttonSpace,
              ),
              imageButtons("8", () => buttonFunction("8")),
              SizedBox(
                width: buttonSpace,
              ),
              imageButtons("9", () => buttonFunction("9")),
              SizedBox(
                width: buttonSpace,
              ),
              imageButtons("x", () => buttonFunction("*")),
            ],
          ),
          SizedBox(
            height: rowSpace,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imageButtons("4", () => buttonFunction("4")),
              SizedBox(
                width: buttonSpace,
              ),
              imageButtons("5", () => buttonFunction("5")),
              SizedBox(
                width: buttonSpace,
              ),
              imageButtons("6", () => buttonFunction("6")),
              SizedBox(
                width: buttonSpace,
              ),
              imageButtons("-", () => buttonFunction("-")),
            ],
          ),
          SizedBox(
            height: rowSpace,
          )
        ],
      ),
    );
  }
}
