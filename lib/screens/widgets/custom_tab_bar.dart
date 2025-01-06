import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/screens/widgets/project_card.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  const CustomTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.transparent),
        color: AppColors.ebony,
      ),
      child: TabBar(
        controller: tabController,
        tabs: const [
          Tab(
            text: "All",
          ),
          Tab(
            text: "Apps",
          ),
          Tab(
            text: "Branding",
          ),
        ],
      ),
    );
  }
}

class CustomTabBarView extends StatelessWidget {
  final TabController tabController;
  const CustomTabBarView({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return TabBarView(controller: tabController, children: [
      AllProjects(
        size: size,
      ),
    ]);
  }
}

class AllProjects extends StatelessWidget {
  final Size size;
  const AllProjects({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 3 / 3,
          ),
          children: [
            ProjectCard(),
          ],
        ),
      ),
    );
  }
}
