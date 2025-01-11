import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';

import 'dart:math' as math;

import 'package:porfolio/constants/const.dart';

class RotatingImageContainer extends StatefulWidget {
  const RotatingImageContainer({super.key});

  @override
  State<RotatingImageContainer> createState() => _RotatingImageContainerState();
}

class _RotatingImageContainerState extends State<RotatingImageContainer> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateZ(isHovered ? 0 : math.pi / 36),
        alignment: Alignment.center,
        height: width() > 950 ? width() * 0.24 : width() * 0.4,
        width: width() > 950 ? width() * 0.24 : width() * 0.4,
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/profile_new.jpg',
            ),
          ),
          border: Border.all(color: isHovered ? studio : valhalla, width: 1.2),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
