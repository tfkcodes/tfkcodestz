import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/styles.dart';
import 'drawer_image.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: ebony,
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const DrawerImage(),
            const Spacer(),
            Text(
              'Oladapo Olatubosun',
              style: TextStyles.style20extrabold,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Mobile Engineer',
              textAlign: TextAlign.center,
              style: TextStyles.style18regular,
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
