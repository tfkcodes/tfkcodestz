import 'package:flutter/material.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/data/my_skills.dart';
import 'package:porfolio/widgets/gradient_text.dart';
import 'package:porfolio/widgets/skills_widget.dart';

class MySkillsSection extends StatelessWidget {
  final Size size;

  const MySkillsSection({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(),
      padding: EdgeInsets.symmetric(
          vertical: width() * 0.05, horizontal: width() * 0.05),
      child: Column(
        children: [
          GradientTextWidget(size: size, text1: "My Skills"),
          Wrap(
            spacing: 20.0,
            runSpacing: 20.0,
            children: mySkills.map((skill) {
              return SkillWidget(
                title: skill["title"]!,
                image: skill["image"]!,
                percentage: skill["percentage"]!,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
