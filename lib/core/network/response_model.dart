import 'package:json_annotation/json_annotation.dart';

part 'response_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ResponseModel {
  final List repos;
  final Map pageInfo;

  const ResponseModel(this.repos, this.pageInfo);

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);
}
