import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';
import 'drawer_image.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: AppColors.ebony,
        child: const Column(
          children: [
            Spacer(
              flex: 2,
            ),
            DrawerImage(),
            Spacer(),
            Text(
              'Oladapo Olatubosun',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: "Poppings",
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Mobile Engineer',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                  color: Colors.white),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
