// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    NotificationModel(
      id: (json['id'] as num).toInt(),
      postId: (json['post_id'] as num).toInt(),
      title: json['title'] as String,
      body: json['body'] as String,
      date: json['created_at'] as String,
    );

Map<String, dynamic> _$NotificationModelToJson(NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'post_id': instance.postId,
      'title': instance.title,
      'body': instance.body,
      'created_at': instance.date,
    };
