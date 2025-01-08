import 'package:flutter/material.dart';
import 'package:porfolio/widgets/all_projects.dart';
import 'package:porfolio/widgets/gradient_text.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GradientTextWidget(
          size: MediaQuery.of(context).size,
          text1: "My Recent Projects",
        ),
        AllProjects(
          size: MediaQuery.of(context).size,
        ),
      ],
    );
  }
}
