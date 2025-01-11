import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/const.dart';
import 'package:porfolio/constants/styles.dart';
import 'package:visibility_detector/visibility_detector.dart';

class ResumeCard extends StatefulWidget {
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
  State<ResumeCard> createState() => _ResumeCardState();
}

class _ResumeCardState extends State<ResumeCard> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.company),
      onVisibilityChanged: (info) {
        if (info.visibleFraction > 0.1 && !_isVisible) {
          setState(() => _isVisible = true);
        }
      },
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 500),
        opacity: _isVisible ? 1 : 0,
        child: Transform.translate(
          offset: _isVisible ? Offset.zero : const Offset(0, 20),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: revolver,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.date,
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
                  widget.title.toUpperCase(),
                  style: TextStyles.style24extrabold.copyWith(
                    fontSize: width() > 950
                        ? 24
                        : width() < 600
                            ? 17
                            : 20,
                  ),
                ),
                Text(
                  widget.company,
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
          ),
        ),
      ),
    );
  }
}
