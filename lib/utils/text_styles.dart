import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(fontSize: 16, context),
        fontWeight: FontWeight.w400,
        fontFamily: 'Montserrat',
        color: const Color(0xff064061));
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 12, context),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 14, context),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 16, context),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 20, context),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: const Color(0xffFFFFFF),
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(fontSize: 16, context),
        fontWeight: FontWeight.w600,
        fontFamily: 'Montserrat',
        color: const Color(0xff064061));
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 20, context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff064061),
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 24, context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(fontSize: 18, context),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(fontSize: 16, context),
        fontWeight: FontWeight.w700,
        fontFamily: 'Montserrat',
        color: const Color(0xff4EB7F2));
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < 700) {
    return width / 550;
  } else if (width < 1100) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
