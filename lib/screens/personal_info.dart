import 'package:flutter/material.dart';
import 'package:porfolio/screens/header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        AreaInfoText(title: 'Contact', text: '+234 7025214514'),
        AreaInfoText(title: 'Email', text: 'odapo138@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: '@oladapodanielolatubosun'),
        AreaInfoText(title: 'Github', text: '@Dapo-dan'),
        SizedBox(
          height: 20,
        ),
        Text(
          'Skills',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
