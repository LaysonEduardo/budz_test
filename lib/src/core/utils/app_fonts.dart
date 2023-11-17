import 'package:flutter/material.dart';

class AppFonts extends TextStyle {
  const AppFonts.thin(
    double size, {
    Color? color,
    super.height,
    super.decoration,
    super.shadows,
  }) : super(
          fontSize: size,
          color: color ?? Colors.black,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w200,
        );

  const AppFonts.light(
    double size, {
    Color? color,
    super.height,
    super.decoration,
    super.shadows,
  }) : super(
          fontSize: size,
          color: color ?? Colors.black,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w400,
        );

  const AppFonts.regular(
    double size, {
    Color? color,
    super.height,
    super.decoration,
    super.shadows,
  }) : super(
          fontSize: size,
          color: color ?? Colors.black,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w600,
        );

  const AppFonts.medium(
    double size, {
    Color? color,
    super.height,
    super.decoration,
    super.shadows,
  }) : super(
          fontSize: size,
          color: color ?? Colors.black,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w700,
        );

  const AppFonts.semiBold(
    double size, {
    Color? color,
    super.height,
    super.decoration,
    super.shadows,
  }) : super(
          fontSize: size,
          color: color ?? Colors.black,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w800,
        );

  const AppFonts.bold(
    double size, {
    Color? color,
    super.height,
    super.decoration,
    super.shadows,
  }) : super(
          fontSize: size,
          color: color ?? Colors.black,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w900,
        );
}
