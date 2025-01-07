import 'package:flutter/material.dart';
import 'package:porfolio/constants/app_strings.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/gradient_styles.dart';
import 'package:porfolio/screens/drawer.dart';
import 'package:porfolio/screens/side_menu_button.dart';
import 'package:porfolio/screens/widgets/count_container_widget.dart';
import 'package:porfolio/screens/widgets/custom_tab_bar.dart';
import 'package:porfolio/screens/widgets/header_text_widget.dart';
import 'package:porfolio/screens/widgets/myservice_widgets.dart';
import 'package:porfolio/screens/widgets/rotating_image_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
          child: Column(
            children: [
              MenuButton(
                onTap: () => Scaffold.of(context).openDrawer(),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: size.height * 0.18),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        HeaderTextWidget(
                          size: size,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SocialLarge(size: size),
                      ],
                    ),
                    const Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [RotatingImageContainer()],
                    ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CountWidget(
                      size: size,
                      text1: "3+",
                      text2: "Years of",
                      text3: "Experience",
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    CountWidget(
                      size: size,
                      text1: "6+",
                      text2: "Projects",
                      text3: "Completed",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Container(
                color: ebony,
                padding: EdgeInsets.symmetric(
                  vertical: size.width * 0.05,
                  horizontal: size.width * 0.05,
                ),
                child: Column(
                  children: [
                    GradientText(
                      "About Me",
                      colors: const [
                        studio,
                        paleSlate,
                      ],
                      style: TextStyle(
                          fontSize: size.width * 0.030,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: size.height * 0.6,
                          width: size.width * 0.25,
                          child: Image.asset(
                            "assets/images/profile_new.jpg",
                          ),
                        ),
                        Expanded(
                          child: Text(
                           AppString.aboutMe,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    MyServicesWidget(size: size),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              GradientTextWidget(
                size: size,
                text1: "My Recent Projects",
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              AllProjects(size: size),
            ],
          ),
        ),
      ),
    );
  }
}
