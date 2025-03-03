import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: studio.withOpacity(0.5))),
          child: Center(
            child: IconButton(
              hoverColor: paleSlate,
              onPressed: () async {
                const url = 'https://www.linkedin.com/in/luciano-jr-1295a2237/';
                if (await canLaunchUrl(Uri.parse(url))) {
                  await launchUrl(Uri.parse(url));
                } else {
                  throw 'Could not launch $url';
                }
              },
              icon: const FaIcon(
                FontAwesomeIcons.linkedinIn,
                color: studio,
                size: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: studio.withOpacity(0.5))),
          child: Center(
            child: IconButton(
              hoverColor: paleSlate,
              onPressed: () async {
                const url = 'https://github.com/tfkcodes';
                if (await canLaunchUrl(Uri.parse(url))) {
                  await launchUrl(Uri.parse(url));
                } else {
                  throw 'Could not launch $url';
                }
              },
              icon: const FaIcon(
                FontAwesomeIcons.github,
                color: studio,
                size: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: studio.withOpacity(0.5))),
          child: Center(
            child: IconButton(
              hoverColor: paleSlate,
              onPressed: () async {
                const url = 'https://wa.me/2556720842';
                if (await canLaunchUrl(Uri.parse(url))) {
                  await launchUrl(Uri.parse(url));
                } else {
                  throw 'Could not launch $url';
                }
              },
              icon: const FaIcon(
                FontAwesomeIcons.whatsapp,
                color: studio,
                size: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
