import 'package:json_annotation/json_annotation.dart';

part 'trending_repo_model.g.dart';

@JsonSerializable()
class TrendingRepoModel {
  final String? name;

  final String? description;

  @JsonKey(name: "primaryLanguage")
  final Map? primaryLanguage;

  const TrendingRepoModel(this.name, this.description, this.primaryLanguage);

  factory TrendingRepoModel.fromJson(Map<String, dynamic> json) =>
      _$TrendingRepoModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingRepoModelToJson(this);
}
