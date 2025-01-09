import 'package:flutter/material.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/old/screens/navbar.dart';
import 'package:porfolio/old/screens/widgets/header_text_widget.dart';
import 'package:porfolio/old/screens/widgets/rotating_image_widget.dart';
import 'package:porfolio/widgets/about_section.dart';
import 'package:porfolio/widgets/projects_section.dart';
import 'package:porfolio/widgets/resume_section.dart';
import 'package:porfolio/widgets/section_spacing.dart';
import 'package:porfolio/widgets/social_tab.dart';
import 'package:porfolio/widgets/stats_section.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ResponsiveNavBar(),
          SectionSpacing(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    HeaderTextWidget(size: size),
                    const SizedBox(height: 20),
                    SocialLarge(size: size),
                  ],
                ),
                const Expanded(
                  child: Center(child: RotatingImageContainer()),
                ),
              ],
            ),
          ),
          verticalSpace(0.05),
          StatsSection(size: size),
          verticalSpace(0.05),
          AboutSection(size: size, imageHeight: size.height * 0.6),
          verticalSpace(0.05),
          const ProjectsSection(),
          verticalSpace(0.05),
          ResumeSection(size: size),
        ],
      ),
    );
  }
}
