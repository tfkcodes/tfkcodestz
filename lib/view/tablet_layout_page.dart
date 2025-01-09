import 'package:flutter/material.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/old/screens/navbar.dart';
import 'package:porfolio/view/sections/about_section.dart';
import 'package:porfolio/old/screens/widgets/header_text_widget.dart';
import 'package:porfolio/old/screens/widgets/rotating_image_widget.dart';
import 'package:porfolio/view/sections/projects_section.dart';
import 'package:porfolio/view/sections/resume_section.dart';
import 'package:porfolio/widgets/social_tab.dart';
import 'package:porfolio/view/sections/stats_section.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 50, child: ResponsiveNavBar()),
          verticalSpace(0.05),
          const RotatingImageContainer(),
          verticalSpace(0.05),
          HeaderTextWidget(size: size),
          verticalSpace(0.05),
          SocialTab(size: size),
          verticalSpace(0.05),
          StatsSection(size: size),
          verticalSpace(0.05),
          AboutSection(size: size, imageHeight: size.height * 0.4),
          verticalSpace(0.05),
          const ProjectsSection(),
          verticalSpace(0.05),
          ResumeSection(size: size),
        ],
      ),
    );
  }
}
