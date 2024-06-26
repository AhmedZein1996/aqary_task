import '../../utils/utils.dart';

extension StringExtension on String {
  String get capitalizeFirst =>
      this[0].toUpperCase() + substring(1).toLowerCase();

  DateTime? get convertToDateTime => Utils.convertStringToDateTime(this);

  int get toInt => int.parse(this);

  double toDouble() => double.parse(this);
}
