import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/screens/widgets/download_cv_widget.dart';
import 'package:porfolio/screens/widgets/social_widget.dart';
import 'package:porfolio/screens/widgets/text_widet.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HeaderTextWidget extends StatelessWidget {
  final Size size;
  const HeaderTextWidget({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.07,
      ),
      child: Column(
        crossAxisAlignment: size.width > 950
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "WELCOME TO MY PORTFOLIO!",
                style: TextStyle(
                  color: studio,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SvgPicture.asset(
                "assets/icons/wave.svg",
                height: 20,
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          TextWidget(
            sSize: size,
            text: "Oladapo",
            color: Colors.white,
            size: 30,
            alignment: TextAlign.center,
          ),
          TextWidget(
            sSize: size,
            text: "Olatubosun",
            color: Colors.white,
            size: 40,
            fw: FontWeight.bold,
            alignment: TextAlign.center,
          ),
          GradientTextWidget(
            size: size,
            alignment: TextAlign.center,
            text1: "Flutter Developer",
          ),
          SizedBox(
            width: size.width * 0.5,
            child: TextWidget(
                sSize: size,
                alignment: TextAlign.center,
                text:
                    "I specialize in building beautiful and functional mobile applications using Flutter, creating seamless user experiences for millions of users.",
                size: 16,
                color: Colors.white,
                fw: FontWeight.normal),
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
      textAlign: size.width < 600 && alignment != null ? alignment : null,
      "$text1\n${text2 ?? ""}",
      colors: const [
        studio,
        paleSlate,
      ],
      style: TextStyle(
        fontSize: size.width * 0.030,
        fontWeight: FontWeight.bold,
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
      width: size.width * 0.5,
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
