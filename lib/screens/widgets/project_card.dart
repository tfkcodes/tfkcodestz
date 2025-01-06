import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/screens/widgets/text_widet.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({super.key});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovered = false;

  void _onHover(bool hover) {
    setState(() {
      _isHovered = hover;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (event) => _onHover(false),
      child: Container(
        height: size.width * 0.10,
        width: size.width * 0.10,
        decoration: BoxDecoration(
          color: AppColors.ebony.withOpacity(0.8),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(50),
              child: Image.asset("assets/images/project.png"),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedContainer(
                margin: const EdgeInsets.all(10),
                curve: Curves.linear,
                duration: const Duration(milliseconds: 400),
                height: _isHovered ? size.height * 0.15 : 0,
                width: size.width, //_isHovered ? size.width : 0,
                decoration: BoxDecoration(
                  color: AppColors.studio,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Text(
                          "Project",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: size.width * 0.02,
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: TextWidget(
                            color: Colors.white,
                            text: "Click to view",
                            sSize: size,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
