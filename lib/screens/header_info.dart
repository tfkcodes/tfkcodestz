import 'package:flutter/material.dart';
import 'package:porfolio/constants/styles.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({super.key, required this.title, required this.text});
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyles.style16bold,),
          Text(
            text,
            style: TextStyles.style13medium.copyWith(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
