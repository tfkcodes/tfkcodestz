import 'package:flutter/material.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/constants/styles.dart';
import 'package:porfolio/widgets/entrance_fader.dart';
import 'package:porfolio/widgets/gradient_text.dart';

class HeaderTextWidget extends StatelessWidget {
  final Size size;
  const HeaderTextWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: width() * 0.07,
      ),
      child: Column(
        crossAxisAlignment: width() > 950
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: width() > 950
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
            children: [
              Text(
                "WELCOME TO MY PORTFOLIO!",
                style: TextStyles.style16regular.copyWith(letterSpacing: 2),
              ),
              horizontalSpaceSmall(),
              EntranceFader(
                offset: const Offset(0, 0),
                delay: const Duration(seconds: 1),
                duration: const Duration(milliseconds: 800),
                child: Image.asset(
                  "assets/icons/hi.gif",
                  height: 20,
                ),
              ),
            ],
          ),
          verticalSpaceMedium(),
          Text(
            "tfkcodes",
            style: TextStyles.style20regular.copyWith(
              fontSize: 30,
            ),
          ),
          Text(
            "Luciano Jackson",
            style: TextStyles.style20extrabold.copyWith(
              fontSize: 40,
            ),
          ),
          GradientTextWidget(
            size: size,
            alignment: TextAlign.center,
            text1: "Software Developer",
            // text1: "Flutter Developer",
          ),
          SizedBox(
            width: width() > 950 ? width() * 0.37 : width() * 0.85,
            child: Text(
              "I specialize in building beautiful and functional mobile applications using Flutter, creating seamless user experiences for millions of users.",
              style: TextStyles.style16regular,
              textAlign: width() < 950 ? TextAlign.center : TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
