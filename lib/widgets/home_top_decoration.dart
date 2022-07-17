import 'package:flutter/cupertino.dart';

Widget topDecoration(context) {
  return Positioned(
    top: 0.0,
    left: 0.0,
    right: 0.0,
    bottom: MediaQuery.of(context).size.height * 0.65,
    child: Container(
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF3D41B6),
            Color(0xFF5B47EC),
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(
            450,
            220,
          ),
          bottomRight: Radius.elliptical(450, 300),
        ),
      ),
    ),
  );
}
