import 'dart:math';

import 'package:flutter/material.dart';

class Loader extends StatefulWidget {
  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation_rotation;
  Animation<double> animation_radius_in;
  Animation<double> animation_radius_out;

  final double radius = 30.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Center(
        child: Stack(
          children: <Widget>[
            Dot(
              radius: 30.0,
              color: Colors.black12,
            ),
            Transform.translate(
              offset: Offset(radius * cos(pi/4), radius * sin(pi/4)),
              child: Dot(
                radius: 5.0,
                color: Colors.redAccent,
              ),
            ),
            Transform.translate(
              offset:
                  Offset(radius * cos(2 * pi / 4), radius * sin(2 * pi / 4)),
              child: Dot(
                radius: 5.0,
                color: Colors.redAccent,
              ),
            ),
            Transform.translate(
              offset:
                  Offset(radius * cos(3 * pi / 4), radius * sin(3 * pi / 4)),
              child: Dot(
                radius: 5.0,
                color: Colors.redAccent,
              ),
            ),
            Transform.translate(
              offset:
                  Offset(radius * cos(4 * pi / 4), radius * sin(4 * pi / 4)),
              child: Dot(
                radius: 5.0,
                color: Colors.redAccent,
              ),
            ),
            Transform.translate(
              offset:
                  Offset(radius * cos(5 * pi / 4), radius * sin(5 * pi / 4)),
              child: Dot(
                radius: 5.0,
                color: Colors.redAccent,
              ),
            ),
            Transform.translate(
              offset:
                  Offset(radius * cos(6 * pi / 4), radius * sin(6 * pi / 4)),
              child: Dot(
                radius: 5.0,
                color: Colors.redAccent,
              ),
            ),
            Transform.translate(
              offset:
                  Offset(radius * cos(7 * pi / 4), radius * sin(7 * pi / 4)),
              child: Dot(
                radius: 5.0,
                color: Colors.redAccent,
              ),
            ),
            Transform.translate(
              offset:
                  Offset(radius * cos(8 * pi / 4), radius * sin(8 * pi / 4)),
              child: Dot(
                radius: 5.0,
                color: Colors.redAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final double radius;
  final Color color;

  Dot({this.radius, this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: this.radius,
        height: this.radius,
        decoration: BoxDecoration(color: this.color, shape: BoxShape.circle),
      ),
    );
  }
}
