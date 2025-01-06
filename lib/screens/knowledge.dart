import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:porfolio/constants/colors.dart';

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
              AppColors.studio,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            knowledge,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
