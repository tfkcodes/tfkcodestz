import 'package:flutter/material.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/old/model/project_model.dart';
import 'package:porfolio/old/screens/widgets/project_card.dart';

class AllProjects extends StatelessWidget {
  final Size size;
  const AllProjects({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width() * 0.10),
      padding: const EdgeInsets.all(20),
      child: Center(
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: width() < 950 ? 1 : 2,
            mainAxisSpacing: 30,
            crossAxisSpacing: 30,
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
