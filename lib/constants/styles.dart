import 'package:flutter/material.dart';
import 'package:porfolio/constants/colors.dart';

class TextStyles {
  static var style24extrabold = extrabold.copyWith(color: white, fontSize: 24);

  static var style20extrabold = extrabold.copyWith(color: white, fontSize: 20);
  static var style20regular = regular.copyWith(color: white, fontSize: 20);

  static var style18extrabold = extrabold.copyWith(color: white, fontSize: 18);
  static var style18bold = bold.copyWith(color: white, fontSize: 18);
  static var style18regular = regular.copyWith(color: white, fontSize: 18);
  static var style18medium = medium.copyWith(color: white, fontSize: 18);

  static var style17extrabold = extrabold.copyWith(color: white, fontSize: 17);
  static var style17thin = thin.copyWith(color: white, fontSize: 17);

  static var style16extrabold = extrabold.copyWith(color: white, fontSize: 16);
  static var style16bold = bold.copyWith(color: white, fontSize: 16);
  static var style16regular = regular.copyWith(color: white, fontSize: 16);
  static var style16medium = medium.copyWith(color: white, fontSize: 16);

  static var style14extrabold = extrabold.copyWith(color: white, fontSize: 14);
  static var style14bold = bold.copyWith(color: white, fontSize: 14);
  static var style14regular = regular.copyWith(color: white, fontSize: 14);

  static var style13medium = medium.copyWith(color: white, fontSize: 13);
  static var style13thin = thin.copyWith(color: white, fontSize: 13);

  static var style11medium = medium.copyWith(color: white, fontSize: 13);
  static var style12extrabold = extrabold.copyWith(color: white, fontSize: 12);
  static var style12medium = medium.copyWith(color: white, fontSize: 12);
  static var style12regular = regular.copyWith(color: white, fontSize: 12);

  static var style10thin = thin.copyWith(color: white, fontSize: 10);
  static var style10regular = regular.copyWith(color: white, fontSize: 10);

  static var style8medium = medium.copyWith(color: white, fontSize: 8);
  static var style8regular = regular.copyWith(color: white, fontSize: 8);
  static var style8thin = thin.copyWith(color: white, fontSize: 8);

  static var style7regular = regular.copyWith(color: white, fontSize: 7);

  static var style6regular = regular.copyWith(color: white, fontSize: 6);

  static TextStyle extrabold = const TextStyle(
    fontFamily: "SpaceGrotesk",
    fontWeight: FontWeight.w700,
  );

  static TextStyle bold = const TextStyle(
    fontFamily: "SpaceGrotesk",
    fontWeight: FontWeight.w600,
  );

  static TextStyle medium = const TextStyle(
    fontFamily: "SpaceGrotesk",
    fontWeight: FontWeight.w500,
  );

  static TextStyle regular = const TextStyle(
    fontFamily: "SpaceGrotesk",
    fontWeight: FontWeight.w400,
  );

  static TextStyle thin = const TextStyle(
    fontFamily: "SpaceGrotesk",
    fontWeight: FontWeight.w300,
  );
}
