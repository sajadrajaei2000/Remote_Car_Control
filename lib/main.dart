// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project4/logic/Press.dart';

void main(List<String> args) {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(const MaterialApp(
    home: Remote_Car_Control(),
    debugShowCheckedModeBanner: false,
  ));
}

class Remote_Car_Control extends StatefulWidget {
  const Remote_Car_Control({super.key});

  @override
  State<Remote_Car_Control> createState() => _Remote_Car_ControlState();
}

class _Remote_Car_ControlState extends State<Remote_Car_Control> {
  final _press = Press();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Stack(
            children: [
              Positioned(
                right: 70,
                bottom: -50,
                top: 10,
                child: GestureDetector(
                  onTap: _press.onUpPressed,
                  child: SvgPicture.asset(
                    'assets/up.svg',
                    width: 40,
                    height: 60,
                  ),
                ),
              ),
              Positioned(
                right: 15,
                bottom: -150,
                top: 0,
                child: GestureDetector(
                  onTap: _press.onRightPressed,
                  child: SvgPicture.asset(
                    'assets/right.svg',
                    width: 30,
                    height: 50,
                  ),
                ),
              ),
              Positioned(
                right: 70,
                bottom: -250,
                top: -10,
                child: GestureDetector(
                  onTap: _press.onDownPressed,
                  child: SvgPicture.asset(
                    'assets/bottom.svg',
                    width: 40,
                    height: 60,
                  ),
                ),
              ),
              Positioned(
                right: 115,
                bottom: -150,
                top: 0,
                child: GestureDetector(
                  onTap: _press.onLeftPressed,
                  child: SvgPicture.asset(
                    'assets/left.svg',
                    width: 30,
                    height: 50,
                  ),
                ),
              ),
              Positioned(
                left: 80,
                bottom: 120,
                child: GestureDetector(
                  onTap: _press.onTrianglePressed,
                  child: SvgPicture.asset(
                    'assets/PS4_Triangle.svg',
                    width: 40,
                    height: 60,
                  ),
                ),
              ),
              Positioned(
                left: 135,
                bottom: 80,
                child: GestureDetector(
                  onTap: _press.onCirclePressed,
                  child: SvgPicture.asset(
                    'assets/PS4_Circle.svg',
                    width: 40,
                    height: 60,
                  ),
                ),
              ),
              Positioned(
                left: 80,
                bottom: 35,
                child: GestureDetector(
                  onTap: _press.onCrossPressed,
                  child: SvgPicture.asset(
                    'assets/PS4_Cross.svg',
                    width: 40,
                    height: 60,
                  ),
                ),
              ),
              Positioned(
                left: 25,
                bottom: 80,
                child: GestureDetector(
                  onTap: _press.onSquarePressed,
                  child: SvgPicture.asset(
                    'assets/PS4_Square.svg',
                    width: 40,
                    height: 60,
                  ),
                ),
              ),
              // Add more Positioned widgets with other SVGs as needed
            ],
          ),
        ),
      ),
    );
  }

  onUpPressed() {
    print('Up');
  }
}
