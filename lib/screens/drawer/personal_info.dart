import 'package:flutter/material.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/constants/styles.dart';
import 'package:porfolio/screens/widgets/header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpaceSmall(),
        const AreaInfoText(title: 'Contact', text: '+234 7025214514'),
        const AreaInfoText(title: 'Email', text: 'odapo138@gmail.com'),
        const AreaInfoText(title: 'LinkedIn', text: '@oladapodanielolatubosun'),
        const AreaInfoText(title: 'Github', text: '@Dapo-dan'),
        verticalSpaceMedium(),
        Text(
          'Skills',
          style: TextStyles.style20extrabold,
        ),
        verticalSpaceMedium(),
      ],
    );
  }
}
