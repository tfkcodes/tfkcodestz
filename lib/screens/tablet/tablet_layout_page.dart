import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/gradient_styles.dart';
import 'package:porfolio/screens/drawer.dart';
import 'package:porfolio/screens/side_menu_button.dart';
import 'package:porfolio/screens/widgets/count_container_widget.dart';
import 'package:porfolio/screens/widgets/download_cv_widget.dart';
import 'package:porfolio/screens/widgets/header_text_widget.dart';
import 'package:porfolio/screens/widgets/myservice_widgets.dart';
import 'package:porfolio/screens/widgets/rotating_image_widget.dart';
import 'package:porfolio/screens/widgets/social_widget.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
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
            margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
            child: Column(
              children: [
                MenuButton(
                  onTap: () => Scaffold.of(context).openDrawer(),
                ),
                const SizedBox(
                  height: 50,
                ),
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
                        SizedBox(
                          height: size.width * 0.09,
                        ),
                        Row(
                          children: [
                            HeaderTextWidget(
                              size: size,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SocialTab(size: size)
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width,
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
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
                      const SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: paleSlate,
                        indent: size.width * 0.05,
                        endIndent: size.width * 0.05,
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      CountWidget(
                        size: size,
                        text1: "6+",
                        text2: "Projects",
                        text3: "Completed",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: paleSlate,
                        indent: size.width * 0.05,
                        endIndent: size.width * 0.05,
                      ),

                      // const SizedBox(height: 20,),
                      // CountWidget(size: size,text1: "1.5K",text2: "Happy",text3: "Customers",),
                      // const SizedBox(height: 20,),
                      // Divider(
                      //   color:  paleSlate,
                      //   indent: size.width*0.05,
                      //   endIndent: size.width*0.05,

                      // ),

                      // const SizedBox(height: 20,),
                      // CountWidget(size: size,text1: "1M",text2: "Awesome",text3: "Reviews",),
                    ],
                  ),
                ),
                MyServicesWidget(size: size)
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
      width: size.width,
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
