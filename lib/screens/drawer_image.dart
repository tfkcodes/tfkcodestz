import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';

class DrawerImage extends StatelessWidget {
  const DrawerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: const LinearGradient(
          colors: [
             AppColors.studio,
            Color(0xFF6a5ae4),
          ],
        ),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Transform.rotate(
              angle: 0.1,
              child: Image.asset(
                'assets/images/profile_new.jpg',
                fit: BoxFit.cover,
              ))),
    );
  }
}
