import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/constants/styles.dart';
import 'package:porfolio/data/education.dart';
import 'package:porfolio/data/resume_list.dart';
import 'package:porfolio/widgets/gradient_text.dart';
import 'package:porfolio/widgets/resume_card.dart';
import 'package:porfolio/widgets/text_input_field.dart';

class ContactMeSection extends StatelessWidget {
  final Size size;

  const ContactMeSection({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ebony,
      ),
      width: width(),
      padding: EdgeInsets.symmetric(
        vertical: width() * 0.05,
        horizontal: width() * 0.05,
      ),
      child: width() > 600
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(
                    20,
                  ),
                  width: width() > 950 ? width() * 0.4 : width() * 0.7,
                  decoration: BoxDecoration(
                    color: valhalla,
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  child: Column(
                    children: [
                      GradientTextWidget(
                          size: size, text1: "Let's work together!"),
                      Text(
                        "I code beautifully simple things and I love what I do. Just simple like that!",
                        style: TextStyles.style16regular,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextInputForm(
                              hint: "First Name",
                              bgColor: ebony.withOpacity(
                                0.8,
                              ),
                            ),
                          ),
                          horizontalSpaceMedium(),
                          Expanded(
                            child: TextInputForm(
                              hint: "Last Name",
                              bgColor: ebony.withOpacity(
                                0.8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextInputForm(
                              hint: "Email Address",
                              bgColor: ebony.withOpacity(
                                0.8,
                              ),
                            ),
                          ),
                          horizontalSpaceMedium(),
                          Expanded(
                            child: TextInputForm(
                              hint: "Phone Number",
                              bgColor: ebony.withOpacity(
                                0.8,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextInputForm(
                        hint: "Message",
                        maxLines: 6,
                        bgColor: ebony.withOpacity(
                          0.8,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: studio,
                          radius: 16,
                          child: SvgPicture.asset(
                            "assets/icons/mobile.svg",
                            color: white,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phone",
                              style: TextStyles.style16regular,
                            ),
                            Text(
                              "+(234) 702 5214 514",
                              style: TextStyles.style24extrabold,
                            ),
                          ],
                        ),
                      ],
                    ),
                    verticalSpaceMedium(),
                    Row(
                      children: [
                        const Icon(
                          Icons.email,
                          color: white,
                          size: 50,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email",
                              style: TextStyles.style16regular,
                            ),
                            Text(
                              "odapo138@gmail.com",
                              style: TextStyles.style24extrabold,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          : Column(
              children: [
                SizedBox(
                  width: width() < 600 ? width() * 0.8 : width() * 0.6,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset(
                              "assets/icons/experience.png",
                              height: width() * 0.1,
                              color: studio,
                            ),
                          ),
                          GradientTextWidget(
                              size: size, text1: "My Experience"),
                        ],
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: resumeData.length,
                        separatorBuilder: (context, index) =>
                            verticalSpaceMedium(),
                        itemBuilder: (context, index) {
                          final resumeItem = resumeData[index];
                          return ResumeCard(
                            title: resumeItem["title"]!,
                            date: resumeItem["date"]!,
                            company: resumeItem["company"]!,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                verticalSpace(0.05),
                SizedBox(
                  width: width() < 600 ? width() * 0.8 : width() * 0.6,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/icons/education.png",
                              height: width() * 0.1,
                              color: studio,
                            ),
                          ),
                          GradientTextWidget(size: size, text1: "My Education"),
                        ],
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: educationList.length,
                        separatorBuilder: (context, index) =>
                            verticalSpaceMedium(),
                        itemBuilder: (context, index) {
                          final educationItem = educationList[index];
                          return ResumeCard(
                            title: educationItem["title"]!,
                            date: educationItem["date"]!,
                            company: educationItem["company"]!,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                verticalSpace(0.05),
              ],
            ),
    );
  }
}
