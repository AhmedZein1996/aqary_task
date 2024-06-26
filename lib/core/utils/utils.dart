import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

import '../exports/exports.dart';

class Utils {
  static void showToast(String text,
      {bool isSuccess = false, bool isInfo = false, bool long = false}) {
    Color color = Colors.red;
    if (isInfo) {
      color = Colors.orangeAccent;
    } else if (isSuccess) {
      color = Colors.green;
    }
    Fluttertoast.showToast(
        msg: text,
        backgroundColor: color,
        fontSize: 16.sp,
        toastLength: long ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT);
  }

  static String formatSecretEmail(String email) {
    final firstPart = email.split("@").first;
    final lastPart = email.split("@").last;
    var secretFormatted = "";
    for (int i = 0; i < firstPart.length; i++) {
      secretFormatted +=
          (i == 0 || i == firstPart.length - 1) ? firstPart[i] : "*";
    }
    return "$secretFormatted@$lastPart";
  }

  static DateTime? convertStringToDateTime(String? dateString) {
    if (dateString == null) return null;
    final DateFormat dateFormat;
    if (RegExp(r"\d+m").hasMatch(dateString)) {
      final minutes = int.parse(dateString.replaceAll("m", ""));
      return DateTime.now().add(Duration(minutes: minutes));
    } else {
      dateFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSSSS");
    }
    return dateFormat.parse(dateString);
  }

  static String? convertDateTimeToString(DateTime? date) {
    if (date == null) return null;
    DateFormat dateFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSSSS");
    return dateFormat.format(date);
  }

  static String capitalizeString({required String text}) {
    String newText = "";
    for (int i = 0; i < text.length; i++) {
      if (i == 0 || (i - 1 >= 0 && (text[i - 1] == " "))) {
        newText += text[i].toUpperCase();
      } else {
        newText += text[i];
      }
    }
    return newText;
  }

  static String capitalizeFirstLetter(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }

  static double feetInchesStringToFeetDecimal(String feetInchesString) {
    try {
      final feetAndInches = feetInchesString.split("'");
      final feet = double.parse(feetAndInches.first);
      final inches = double.parse(feetAndInches.last);
      return feet + (inches * 0.0833333);
    } catch (_) {
      return 0;
    }
  }

  static String convertFeetToFeetInches(double feet) {
    int feetPart = feet.floor();
    double inchesPart = (feet - feetPart) * 12.0;
    int inches = inchesPart.round();
    return '$feetPart\'$inches';
  }
  //
  // static double calculatePercentage(String value) {
  //   double numericValue = double.parse(value.toString());
  //
  //   if (numericValue == 0) {
  //     return 0.0001;
  //   } else if (numericValue > 0 && numericValue < 10) {
  //     return numericValue / 10;
  //   } else if (numericValue >= 10 && numericValue < 100) {
  //     return numericValue / 100;
  //   } else if (numericValue >= 100 && numericValue < 1000) {
  //     return numericValue / 1000;
  //   } else if (numericValue >= 1000 && numericValue < 10000) {
  //     return numericValue / 10000;
  //   } else if (numericValue >= 10000 && numericValue < 100000) {
  //     return numericValue / 100000;
  //   }
  //
  //   return 0;
  // }
  //
  // static double calculateCaloriesBurned(String weightStr, String stepsStr) {
  //   try {
  //     double weightKg = double.parse(weightStr);
  //     int steps = int.parse(stepsStr);
  //
  //     double walkingMET = 3.9; // MET value for moderate walking.
  //
  //     double weightLbs = weightKg * 2.20462;
  //
  //     double caloriesPerMinute = (walkingMET * weightLbs) / 200.0;
  //
  //     double caloriesBurned = (steps / 2000) * caloriesPerMinute;
  //
  //     return double.parse((caloriesBurned).toStringAsFixed(2));
  //   } catch (e) {
  //     return 0.00;
  //   }
  // }
  //
  // static double calculateDistance(String steps, {bool isMale = true}) {
  //   int stepCount = int.tryParse(steps) ?? 0;
  //
  //   double averageStrideLengthMeters = isMale ? 0.415 : 0.413;
  //
  //   return stepCount * averageStrideLengthMeters;
  // }
  //
  // static String capitalizeFirstLetter(String input) {
  //   if (input == '' || input.isEmpty) {
  //     return input;
  //   }
  //
  //   return input[0].toUpperCase() + input.substring(1);
  // }
}
