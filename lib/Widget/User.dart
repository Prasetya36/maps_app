import 'package:flutter/material.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 277,
          height: 65,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 277,
                  height: 65,
                  decoration: ShapeDecoration(
                    color: Color(0x68D9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 0,
                child: Container(
                  width: 257,
                  height: 65,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 5,
                        child: Container(
                          width: 55,
                          height: 55,
                          decoration: ShapeDecoration(
                            color: Color(0xFF666666),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 67,
                        top: 5,
                        child: Container(
                          width: 55,
                          height: 55,
                          decoration: ShapeDecoration(
                            color: Color(0xFF666666),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 134,
                        top: 5,
                        child: Container(
                          width: 55,
                          height: 55,
                          decoration: ShapeDecoration(
                            color: Color(0xFF666666),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 201,
                        top: 5,
                        child: Container(
                          width: 55,
                          height: 55,
                          decoration: ShapeDecoration(
                            color: Color(0xFF666666),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 268,
                        top: 5,
                        child: Container(
                          width: 55,
                          height: 55,
                          decoration: ShapeDecoration(
                            color: Color(0xFF666666),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 335,
                        top: 5,
                        child: Container(
                          width: 55,
                          height: 55,
                          decoration: ShapeDecoration(
                            color: Color(0xFF666666),
                            shape: OvalBorder(),
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
      ],
    );
  }
}