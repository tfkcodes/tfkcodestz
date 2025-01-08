import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadCVButton extends StatelessWidget {
  const DownloadCVButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        const url =
            'https://docs.google.com/document/d/1RjeIMeZAW9A-J0H7TwzMQ7uKAiL88Z0Q_zQ5MG-tt8Q/export?format=pdf';
        if (await canLaunchUrl(Uri.parse(url))) {
          await launchUrl(Uri.parse(url));
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: paleSlate)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Download CV",
              style: TextStyles.style16regular,
            ),
            const SizedBox.square(
              dimension: 12,
            ),
            const FaIcon(
              FontAwesomeIcons.download,
              color: paleSlate,
              size: 18,
            )
          ],
        ),
      ),
    );
  }
}
