import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/constants/styles.dart';
import 'package:porfolio/model/project_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:visibility_detector/visibility_detector.dart';

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
  bool _isVisible = false;

  void _onHover(bool hover) {
    setState(() {
      _isHovered = hover;
    });
  }

  @override
  Widget build(BuildContext context) {
    return width() > 950
        ? MouseRegion(
            onEnter: (_) => _onHover(true),
            onExit: (event) => _onHover(false),
            child: Container(
              height: width() * 0.07,
              width: width() * 0.07,
              decoration: BoxDecoration(
                color: valhalla.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(40),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          widget.project.imageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: AnimatedContainer(
                      margin: const EdgeInsets.all(10),
                      curve: Curves.linear,
                      duration: const Duration(milliseconds: 400),
                      height: _isHovered ? height() * 0.1 : 0,
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
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    widget.project.subtitle,
                                    style: TextStyles.style12extrabold,
                                    textAlign: TextAlign.center,
                                  ),
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
                                      style:
                                          TextStyles.style12extrabold.copyWith(
                                        decoration: TextDecoration.underline,
                                        decorationColor: white,
                                      ),
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
                                      style:
                                          TextStyles.style12extrabold.copyWith(
                                        decoration: TextDecoration.underline,
                                        decorationColor: white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Expanded(
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //     children: [
                            //       TextButton(
                            //         onPressed: () async {
                            //           var url = widget.project.iosUrl;
                            //           if (await canLaunchUrl(Uri.parse(url))) {
                            //             await launchUrl(Uri.parse(url));
                            //           } else {
                            //             throw 'Could not launch $url';
                            //           }
                            //         },
                            //         child: Text(
                            //           "iOS",
                            //           style: TextStyles.style18regular,
                            //         ),
                            //       ),
                            //       TextButton(
                            //         onPressed: () async {
                            //           var url = widget.project.androidUrl;
                            //           if (await canLaunchUrl(Uri.parse(url))) {
                            //             await launchUrl(Uri.parse(url));
                            //           } else {
                            //             throw 'Could not launch $url';
                            //           }
                            //         },
                            //         child: Text(
                            //           "Android",
                            //           style: TextStyles.style18regular,
                            //         ),
                            //       ),
                            //     ],
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
          )
        : VisibilityDetector(
            key: Key(widget.project.title),
            onVisibilityChanged: (info) {
              if (info.visibleFraction > 0.1 && !_isVisible) {
                setState(() => _isVisible = true);
              }
            },
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 500),
              opacity: _isVisible ? 1 : 0,
              child: Transform.translate(
                offset: _isVisible ? Offset.zero : const Offset(0, 20),
                child: Container(
                  height: width() * 0.07,
                  width: width() * 0.07,
                  decoration: BoxDecoration(
                    color: valhalla.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(35),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              widget.project.imageUrl,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: AnimatedContainer(
                          margin: const EdgeInsets.all(10),
                          curve: Curves.linear,
                          duration: const Duration(milliseconds: 400),
                          height: _isVisible ? height() * 0.1 : 0,
                          width: width(),
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
                                    style: width() < 600
                                        ? TextStyles.style20extrabold
                                        : TextStyles.style24extrabold,
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        widget.project.subtitle,
                                        style: TextStyles.style12extrabold
                                            .copyWith(
                                          fontSize: width() < 600 ? 11 : 16,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      GestureDetector(
                                        onTap: () async {
                                          var url = widget.project.iosUrl;
                                          if (await canLaunchUrl(
                                              Uri.parse(url))) {
                                            await launchUrl(Uri.parse(url));
                                          } else {
                                            throw 'Could not launch $url';
                                          }
                                        },
                                        child: Text(
                                          "iOS",
                                          style: TextStyles.style12extrabold
                                              .copyWith(
                                            fontSize: width() < 600 ? 10 : 16,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: white,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () async {
                                          var url = widget.project.androidUrl;
                                          if (await canLaunchUrl(
                                              Uri.parse(url))) {
                                            await launchUrl(Uri.parse(url));
                                          } else {
                                            throw 'Could not launch $url';
                                          }
                                        },
                                        child: Text(
                                          "Android",
                                          style: TextStyles.style12extrabold
                                              .copyWith(
                                            fontSize: width() < 600 ? 10 : 16,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: white,
                                          ),
                                        ),
                                      ),
                                    ],
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
              ),
            ),
          );
  }
}
