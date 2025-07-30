import 'package:json_annotation/json_annotation.dart';

part 'notification_model.g.dart';

@JsonSerializable()
class NotificationModel {
  final int id;

  @JsonKey(name: 'post_id')
  final int postId;

  final String title;
  final String body;

  @JsonKey(name: 'created_at')
  final String date;

  NotificationModel({
    required this.id,
    required this.postId,
    required this.title,
    required this.body,
    required this.date,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);
}
