import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';

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
              alignment: Alignment.center,
              child: AnimatedContainer(
                curve: Curves.linear,
                duration: const Duration(milliseconds: 400),
                height: _isHovered ? size.height * 0.15 : 0,
                width: size.width, //_isHovered ? size.width : 0,
                decoration: BoxDecoration(
                  color: AppColors.studio,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "Project",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: size.width * 0.02,
                    ),
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
