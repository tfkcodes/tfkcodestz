import 'package:flutter/material.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/old/screens/navbar.dart';
import 'package:porfolio/widgets/about_section.dart';
import 'package:porfolio/old/screens/widgets/header_text_widget.dart';
import 'package:porfolio/old/screens/widgets/rotating_image_widget.dart';
import 'package:porfolio/widgets/projects_section.dart';
import 'package:porfolio/widgets/resume_section.dart';
import 'package:porfolio/widgets/social_tab.dart';
import 'package:porfolio/widgets/stats_section.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 50, child: ResponsiveNavBar()),
          const RotatingImageContainer(),
          verticalSpace(0.05),
          HeaderTextWidget(size: size),
          verticalSpace(0.08),
          SocialTab(size: size),
          verticalSpace(0.06),
          StatsSection(size: size),
          verticalSpace(0.08),
          AboutSection(size: size, imageHeight: size.height * 0.3),
          const ProjectsSection(),
          verticalSpace(0.05),
          ResumeSection(size: size),
        ],
      ),
    );
  }
}
