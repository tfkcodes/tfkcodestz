import 'package:flutter/material.dart';
import 'package:porfolio/constants/app_strings.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/constants/gradient_styles.dart';
import 'package:porfolio/constants/styles.dart';
import 'package:porfolio/screens/drawer/drawer.dart';
import 'package:porfolio/screens/widgets/custom_tab_bar.dart';
import 'package:porfolio/screens/widgets/side_menu_button.dart';
import 'package:porfolio/screens/widgets/count_container_widget.dart';
import 'package:porfolio/screens/widgets/download_cv_widget.dart';
import 'package:porfolio/screens/widgets/header_text_widget.dart';
import 'package:porfolio/screens/widgets/rotating_image_widget.dart';
import 'package:porfolio/screens/widgets/social_widget.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: height() * 0.01),
            child: Column(
              children: [
                MenuButton(
                  onTap: () => Scaffold.of(context).openDrawer(),
                ),
                verticalSpaceLarge(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [RotatingImageContainer()],
                        ),
                        verticalSpace(0.05),
                        Row(
                          children: [
                            HeaderTextWidget(
                              size: size,
                            ),
                          ],
                        ),
                        verticalSpaceMedium(),
                        SocialTab(size: size)
                      ],
                    ),
                  ],
                ),
                verticalSpace(0.05),
                Container(
                  width: width(),
                  margin: EdgeInsets.symmetric(horizontal: width() * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CountWidget(
                        size: size,
                        text1: "3+",
                        text2: "Years of",
                        text3: "Experience",
                      ),
                      verticalSpaceMedium(),
                      Divider(
                        color: paleSlate,
                        indent: width() * 0.05,
                        endIndent: width() * 0.05,
                      ),
                      verticalSpaceMedium(),
                      CountWidget(
                        size: size,
                        text1: "6+",
                        text2: "Projects",
                        text3: "Completed",
                      ),
                      verticalSpace(0.05),
                    ],
                  ),
                ),
                Container(
                  width: width(),
                  color: ebony,
                  padding: EdgeInsets.symmetric(
                    vertical: width() * 0.05,
                    horizontal: width() * 0.05,
                  ),
                  child: Column(
                    children: [
                      GradientTextWidget(
                        size: size,
                        text1: "About Me",
                      ),
                      verticalSpace(0.01),
                      Container(
                        height: height() * 0.4,
                        width: width() * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/profile_new.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      verticalSpace(0.02),
                      Text(
                        AppString.aboutMe,
                        style: TextStyles.style16regular.copyWith(
                          height: 2,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      verticalSpace(0.05),
                    ],
                  ),
                ),
                verticalSpace(0.05),
                GradientTextWidget(
                  size: size,
                  text1: "My Recent Projects",
                ),
                AllProjects(size: size),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SocialTab extends StatelessWidget {
  const SocialTab({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width(),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DownloadCVButton(),
          SizedBox(
            height: 20,
          ),
          SocialWidget(),
        ],
      ),
    );
  }
}
