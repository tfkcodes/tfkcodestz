import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/constants/styles.dart';
import 'package:porfolio/old/model/project_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatefulWidget {
  final Project project;
  const ProjectCard({
    super.key,
    required this.project,
  });

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
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (event) => _onHover(false),
      child: Container(
        height: width() * 0.10,
        width: width() * 0.10,
        decoration: BoxDecoration(
          color: ebony.withOpacity(0.8),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(50),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      widget.project.imageUrl,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedContainer(
                margin: const EdgeInsets.all(10),
                curve: Curves.linear,
                duration: const Duration(milliseconds: 400),
                height: _isHovered ? height() * 0.15 : 0,
                width: width(), //_isHovered ? width() : 0,
                decoration: BoxDecoration(
                  color: studio,
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
                          widget.project.title,
                          style: TextStyles.style24extrabold,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          widget.project.description,
                          style: TextStyles.style12regular,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              onPressed: () async {
                                var url = widget.project.iosUrl;
                                if (await canLaunchUrl(Uri.parse(url))) {
                                  await launchUrl(Uri.parse(url));
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Text(
                                "iOS",
                                style: TextStyles.style18regular,
                              ),
                            ),
                            TextButton(
                              onPressed: () async {
                                var url = widget.project.androidUrl;
                                if (await canLaunchUrl(Uri.parse(url))) {
                                  await launchUrl(Uri.parse(url));
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Text(
                                "Android",
                                style: TextStyles.style18regular,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Expanded(
                      //   child: TextButton(
                      //     onPressed: () {},
                      //     child: Text(
                      //       "Click to view",
                      //       style: TextStyles.style18regular,
                      //     ),
                      //   ),
                      // ),
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
