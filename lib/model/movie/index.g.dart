// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      id: json['id'] as int,
      imgUrl: json['imgUrl'] as String,
      title: json['title'] as String,
      publishedYear: json['publishedYear'] as int?,
      durationTime: json['durationTime'] as int?,
      type: json['type'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imgUrl': instance.imgUrl,
      'title': instance.title,
      'publishedYear': instance.publishedYear,
      'durationTime': instance.durationTime,
      'type': instance.type,
      'description': instance.description,
    };