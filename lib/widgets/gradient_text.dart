import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/constants/styles.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class GradientTextWidget extends StatelessWidget {
  final TextAlign? alignment;
  final String? text1;
  final String? text2;
  final Color? color1;
  final Color? color2;
  final double? fsize;
  final FontWeight? fw;
  const GradientTextWidget({
    super.key,
    required this.size,
    this.alignment,
    this.fw,
    this.color1,
    this.text1,
    this.text2,
    this.color2,
    this.fsize,
  });

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
        fontSize: fsize ??
            (width() < 600
                ? 35
                : (width() < 950 ? width() * 0.04 : width() * 0.025)),
      ),
    );
  }
}
