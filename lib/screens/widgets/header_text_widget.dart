import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/constants/styles.dart';
import 'package:porfolio/screens/widgets/download_cv_widget.dart';
import 'package:porfolio/screens/widgets/social_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

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
            children: [
              Text(
                "WELCOME TO MY PORTFOLIO!",
                style: TextStyles.style16regular,
              ),
              horizontalSpaceSmall(),
              SvgPicture.asset(
                "assets/icons/wave.svg",
                height: 20,
                width: 20,
              ),
            ],
          ),
          verticalSpaceMedium(),
          Text(
            "Oladapo",
            style: TextStyles.style20regular.copyWith(
              fontSize: 30,
            ),
          ),
          Text(
            "Olatubosun",
            style: TextStyles.style20extrabold.copyWith(
              fontSize: 40,
            ),
          ),
          GradientTextWidget(
            size: size,
            alignment: TextAlign.center,
            text1: "Flutter Developer",
          ),
          SizedBox(
            width: width() * 0.5,
            child: Text(
              "I specialize in building beautiful and functional mobile applications using Flutter, creating seamless user experiences for millions of users.",
              style: TextStyles.style16regular,
            ),
          ),
        ],
      ),
    );
  }
}

class GradientTextWidget extends StatelessWidget {
  final TextAlign? alignment;
  final String? text1;
  final String? text2;
  final Color? color1;
  final Color? color2;
  final double? fsize;
  final FontWeight? fw;
  const GradientTextWidget(
      {super.key,
      required this.size,
      this.alignment,
      this.fw,
      this.color1,
      this.text1,
      this.text2,
      this.color2,
      this.fsize});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GradientText(
      textAlign: width() < 600 && alignment != null ? alignment : null,
      "$text1\n${text2 ?? ""}",
      colors: const [
        studio,
        paleSlate,
      ],
      style: TextStyles.style24extrabold.copyWith(
        fontSize: width() * 0.030,
      ),
    );
  }
}

class SocialLarge extends StatelessWidget {
  const SocialLarge({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width() * 0.5,
      child: const Row(
        children: [
          DownloadCVButton(),
          SizedBox(
            width: 20,
          ),
          SocialWidget()
        ],
      ),
    );
  }
}
