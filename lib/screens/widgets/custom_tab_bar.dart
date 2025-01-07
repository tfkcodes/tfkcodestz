import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/screens/widgets/project_card.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  const CustomTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {

    return Container(
      width: width() * 0.36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.transparent),
        color: ebony,
      ),
      child: TabBar(
        dividerColor: Colors.transparent,
        indicator: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(20),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey,
        labelPadding: const EdgeInsets.symmetric(horizontal: 20),
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
      AllProjects(
        size: size,
      ),
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
      margin: EdgeInsets.symmetric(horizontal: width() * 0.10),
      padding: const EdgeInsets.all(20),
      child: Center(
        child: GridView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 30,
            crossAxisSpacing: 30,
            childAspectRatio: 3 / 3,
          ),
          children: const [
            ProjectCard(),
            ProjectCard(),
            ProjectCard(),
            ProjectCard(),
          ],
        ),
      ),
    );
  }
}
