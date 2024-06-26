// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_repo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingRepoModel _$TrendingRepoModelFromJson(Map<String, dynamic> json) =>
    TrendingRepoModel(
      json['name'] as String?,
      json['description'] as String?,
      json['primaryLanguage'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$TrendingRepoModelToJson(TrendingRepoModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'primaryLanguage': instance.primaryLanguage,
    };
