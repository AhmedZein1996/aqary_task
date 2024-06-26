import 'package:json_annotation/json_annotation.dart';

import 'utils.dart';

class StringDateTimeConverter implements JsonConverter<DateTime?, String?> {
  const StringDateTimeConverter();

  @override
  DateTime? fromJson(String? json) => Utils.convertStringToDateTime(json);

  @override
  String? toJson(DateTime? date) => Utils.convertDateTimeToString(date);
}
