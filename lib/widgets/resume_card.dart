import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/constants/styles.dart';

class ResumeCard extends StatelessWidget {
  final String title;
  final String date;
  final String company;

  const ResumeCard({
    super.key,
    required this.title,
    required this.date,
    required this.company,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: revolver,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: TextStyles.style18extrabold.copyWith(
              color: studio,
              fontSize: width() > 950
                  ? 18
                  : width() < 600
                      ? 13
                      : 16,
            ),
          ),
          Text(
            title.toUpperCase(),
            style: TextStyles.style24extrabold.copyWith(
              fontSize: width() > 950
                  ? 24
                  : width() < 600
                      ? 17
                      : 20,
            ),
          ),
          Text(
            company,
            style: TextStyles.style14regular.copyWith(
              fontSize: width() > 950
                  ? 14
                  : width() < 600
                      ? 11
                      : 14,
            ),
          ),
        ],
      ),
    );
  }
}
