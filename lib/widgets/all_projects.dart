import 'package:flutter/material.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/data/my_projects.dart';
import 'package:porfolio/widgets/project_card.dart';

class AllProjects extends StatelessWidget {
  final Size size;
  const AllProjects({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width() * 0.10),
      padding: EdgeInsets.symmetric(
          vertical: height() * 0.05, horizontal: width() * 0.05),
      child: Center(
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: width() < 950 ? 1 : 2,
            mainAxisSpacing: width() * 0.05,
            crossAxisSpacing: width() * 0.05,
            childAspectRatio: 3 / 3,
          ),
          itemCount: myProjects.length,
          itemBuilder: (context, index) {
            return ProjectCard(
              project: myProjects[index],
            );
          },
        ),
      ),
    );
  }
}
