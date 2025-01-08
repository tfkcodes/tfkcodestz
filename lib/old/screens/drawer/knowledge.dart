import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/styles.dart';

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({super.key, required this.knowledge});
  final String knowledge;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/check.svg',
            colorFilter: const ColorFilter.mode(
              studio,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            knowledge,
            style: TextStyles.style14bold,
          ),
        ],
      ),
    );
  }
}
