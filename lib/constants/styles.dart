import 'package:flutter/cupertino.dart';
import 'package:porfolio/constants/colors.dart';

class Styles {
  static const BoxDecoration gradientDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        AppColors.ebony,
        AppColors.studio,
      ],
    ),
  );

  static const BoxDecoration drawerDecoration = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        AppColors.studio,
        AppColors.ebony,
      ],
    ),
  );
}
