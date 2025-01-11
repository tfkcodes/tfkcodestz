import 'package:flutter/material.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/constants/gradient_styles.dart';
import 'package:porfolio/view/desktop_layout_page.dart';
import 'package:porfolio/view/mobile_layout_page.dart';
import 'package:porfolio/widgets/custom_fab.dart';
import 'package:porfolio/widgets/navbar.dart';
import 'package:porfolio/view/tablet_layout_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController =
        ScrollController(); // Initialize a ScrollController

    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.red,
      //   automaticallyImplyLeading: false,
      //   title: ResponsiveNavBar(
      //     onItemSelected: (String item) {
      //       if (item == 'About') scrollToSection(aboutKey);
      //       if (item == 'Projects') scrollToSection(projectsKey);
      //       if (item == 'Resume') scrollToSection(resumeKey);
      //       if (item == 'Skills') scrollToSection(skillsKey);
      //       if (item == 'Contact') scrollToSection(contactKey);
      //     },
      //   ),
      // ),
      endDrawer: width() < 950
          ? MobileDrawer(
              menuItems: const [
                'About',
                'Projects',
                'Resume',
                'Skills',
                'Contact',
              ],
              onItemSelected: (item) {
                // Handle mobile drawer item selection
                if (item == 'About') scrollToSection(aboutKey);
                if (item == 'Projects') scrollToSection(projectsKey);
                if (item == 'Resume') scrollToSection(resumeKey);
                if (item == 'Skills') scrollToSection(skillsKey);
                if (item == 'Contact') scrollToSection(contactKey);
                Navigator.of(context).pop(); // Close the drawer after selection
              },
            )
          : null,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: Styles.gradientDecoration,
            child: SingleChildScrollView(
              controller: scrollController, // Attach ScrollController
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 950) {
                    return const DesktopView();
                  } else if (constraints.maxWidth > 600) {
                    return const TabletView();
                  } else {
                    return const MobileView();
                  }
                },
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ScrollPositionIndicatorFAB(
              scrollController: scrollController,
            ),
          ),
        ],
      ),
    );
  }
}
