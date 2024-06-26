import '../../constants/app_variables.dart';
import '../../utils/utils.dart';

class AppValidator {
  static bool isEmailValid(email) {
    return RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(email);
  }

  static bool isUrlValid(url) {
    return RegExp(
      r'^(http(s)?:\/\/)?(www\.)?[a-zA-Z0-9-_\.]+\.[a-zA-Z]{2,4}\/?([\w\/\-?=%.&=]+)?$',
    ).hasMatch(url);
  }

  static bool isDurationValid(url) {
    return RegExp(
      r'^\d{1,2}:\d{1,2}$',
    ).hasMatch(url);
  }

  static bool isValidTextNumber(
      String textNumber, double minValue, double maxValue) {
    try {
      final clearedTextNum = textNumber.trim();
      final number =
          clearedTextNum.isNotEmpty ? double.parse(clearedTextNum) : 0;
      final isValid = number >= minValue && number <= maxValue;
      return isValid;
    } catch (_) {
      return false;
    }
  }

  static bool isValidName(String name) {
    return name.trim().isNotEmpty;
  }

  static bool isPasswordValid(String password) {
    RegExp passwordPattern =
        RegExp(r'^(?=.*[0-9])(?=.*[A-Z])(?=.*[^a-zA-Z0-9]).{8,}$');

    return passwordPattern.hasMatch(password);
  }

  static bool isValidVerificationCode(String code) {
    RegExp sixNumbersPattern = RegExp(r'^\d{6}$');
    return sixNumbersPattern.hasMatch(code);
  }

  static bool isValidFeetInchesInput(String text) {
    final isValidText = RegExp(r"^\d'{1}\d{1,2}$").hasMatch(text);
    if (isValidText) {
      final feet = Utils.feetInchesStringToFeetDecimal(text);
      return feet >= AppConstants.minHeightFeet &&
          feet <= AppConstants.maxHeightFeet;
    }
    return false;
  }
}
