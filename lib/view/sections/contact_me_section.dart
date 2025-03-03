import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/constants/styles.dart';
import 'package:porfolio/widgets/gradient_text.dart';

class ContactMeSection extends StatefulWidget {
  final Size size;

  const ContactMeSection({
    super.key,
    required this.size,
  });

  @override
  State<ContactMeSection> createState() => _ContactMeSectionState();
}

class _ContactMeSectionState extends State<ContactMeSection> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  var firstNameTC = TextEditingController();
  var lastNameTC = TextEditingController();
  var emailTC = TextEditingController();
  var phoneTC = TextEditingController();
  var messageTC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: ebony,
        ),
        width: width(),
        padding: EdgeInsets.symmetric(
          horizontal: width() > 600 ? width() * 0.12 : width() * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            verticalSpace(0.05),
            GradientTextWidget(
              size: widget.size,
              text1: "Let's work together!",
            ),
            Text(
              "What's next? Feel free to reach out to me if you're looking for a developer, or simply want to connect.",
              style: TextStyles.style16regular,
              textAlign: TextAlign.center,
            ),
            verticalSpaceMedium(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/chat.svg",
                  colorFilter: const ColorFilter.mode(
                    white,
                    BlendMode.srcIn,
                  ),
                ),
                horizontalSpaceMedium(),
                Text(
                  "lucianojackson048@gmail.com",
                  style: TextStyles.style24extrabold,
                ),
                horizontalSpaceMedium(),
                InkWell(
                  onTap: () {
                    Clipboard.setData(
                      const ClipboardData(
                        text: "lucianojackson048@gmail.com",
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    "assets/icons/copy.svg",
                    colorFilter: const ColorFilter.mode(
                      white,
                      BlendMode.srcIn,
                    ),
                  ),

                ),
              ],
            ),
            verticalSpaceMedium(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/call.svg",
                  colorFilter: const ColorFilter.mode(
                    white,
                    BlendMode.srcIn,
                  ),
                ),
                horizontalSpaceMedium(),
                Text(
                  "+(255) 672 084 262",
                  style: TextStyles.style24extrabold,
                ),
                horizontalSpaceMedium(),
                InkWell(
                  onTap: () {
                    Clipboard.setData(
                      const ClipboardData(
                        text: "+(255) 672 084 262",
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    "assets/icons/copy.svg",
                    colorFilter: const ColorFilter.mode(
                      white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(0.1),
            Text(
              "© 2025 All Rights Reserved by Luciano Jackson",
              style: TextStyles.style16regular,
              textAlign: TextAlign.center,
            ),
            verticalSpace(0.02),
          ],
        )

        
        );
  }
}
