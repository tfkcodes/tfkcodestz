import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';
import 'package:porfolio/constants/styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onTap,
    required this.title,
    this.loadingText,
    this.buttonColor,
    this.borderColor,
    this.textColor,
    this.borderRadius,
    this.hPadding,
    this.vPadding,
    this.allowSubmit = true,
    this.isLoading = false,
  });

  final String title;
  final String? loadingText;
  final void Function() onTap;
  final Color? buttonColor, borderColor;
  final Color? textColor;
  final double? borderRadius, hPadding, vPadding;
  final bool allowSubmit, isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: allowSubmit ? onTap : null,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(borderRadius ?? 4),
          border: Border.all(
            color: borderColor ?? Colors.transparent,
          ),
          gradient: LinearGradient(
            colors: [
              studio,
              studio.withOpacity(0.5),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: hPadding ?? 30.0,
            vertical: vPadding ?? 13.0,
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyles.style14extrabold.copyWith(
                color: textColor ?? (allowSubmit ? white : black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
