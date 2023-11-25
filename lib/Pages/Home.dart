import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 277,
        decoration: ShapeDecoration(
          color: const Color.fromARGB(172, 217, 217, 217),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: const [
            BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                blurStyle: BlurStyle.outer)
          ],
        ),
        child: ListView(
          addAutomaticKeepAlives: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 10,
            ),
            Container(
              width: 60,
              height: 50,
              margin:
                  const EdgeInsets.only(left: 3, right: 3, top: 10, bottom: 10),
              decoration: const ShapeDecoration(
                color: Color(0xFF666666),
                shape: OvalBorder(),
              ),
            ),
            Container(
              width: 60,
              height: 50,
              margin:
                  const EdgeInsets.only(left: 3, right: 3, top: 10, bottom: 10),
              decoration: const ShapeDecoration(
                color: Color(0xFF666666),
                shape: OvalBorder(),
              ),
            ),
            Container(
              width: 60,
              height: 50,
              margin:
                  const EdgeInsets.only(left: 3, right: 3, top: 10, bottom: 10),
              decoration: const ShapeDecoration(
                color: Color(0xFF666666),
                shape: OvalBorder(),
              ),
            ),
            Container(
              width: 60,
              height: 50,
              margin:
                  const EdgeInsets.only(left: 3, right: 3, top: 10, bottom: 10),
              decoration: const ShapeDecoration(
                color: Color(0xFF666666),
                shape: OvalBorder(),
              ),
            ),
            Container(
              width: 60,
              height: 50,
              margin:
                  const EdgeInsets.only(left: 3, right: 3, top: 10, bottom: 10),
              decoration: const ShapeDecoration(
                color: Color(0xFF666666),
                shape: OvalBorder(),
              ),
            ),
            Container(
              width: 60,
              height: 50,
              margin:
                  const EdgeInsets.only(left: 3, right: 3, top: 10, bottom: 10),
              decoration: const ShapeDecoration(
                color: Color(0xFF666666),
                shape: OvalBorder(),
              ),
            ),
            Container(
              width: 60,
              height: 50,
              margin:
                  const EdgeInsets.only(left: 3, right: 3, top: 10, bottom: 10),
              decoration: const ShapeDecoration(
                color: Color(0xFF666666),
                shape: OvalBorder(),
              ),
            ),
            Container(
              width: 60,
              height: 50,
              margin:
                  const EdgeInsets.only(left: 3, right: 3, top: 10, bottom: 10),
              decoration: const ShapeDecoration(
                color: Color(0xFF666666),
                shape: OvalBorder(),
              ),
            ),
            Container(
              width: 10,
            ),
          ],
        ));
  }
}
