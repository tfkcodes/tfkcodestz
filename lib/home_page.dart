import 'package:flutter/material.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/constants/gradient_styles.dart';
import 'package:porfolio/view/desktop_layout_page.dart';
import 'package:porfolio/view/mobile_layout_page.dart';
import 'package:porfolio/widgets/navbar.dart';
import 'package:porfolio/view/tablet_layout_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: width() < 600
          ? const MobileDrawer(
              menuItems: ['Projects', 'Resume', 'Skills', 'Contact'])
          : null,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: Styles.gradientDecoration,
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
    );
  }
}
