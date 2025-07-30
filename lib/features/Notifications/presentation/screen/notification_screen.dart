import 'package:flutter/material.dart';
import '../../../../core/constant/styles/text_style.dart';
import '../../data/model/notification_model.dart';
import '../widgets/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  //  List of Notification(Fake data )
  final List<NotificationModel> notifications = [
    NotificationModel(
      id: 1,
      postId:1,
      title: "New Feature Released!",
      body: "Check out our new post about dark mode.",
      date: "2025-07-30",
    ),
    NotificationModel(
      id: 2,
      postId: 2,
      title: "Reminder",
      body: "Don’t forget to review yesterday's post.",
      date: "2025-07-29",
    ),
    NotificationModel(
      id: 3,
      postId: 3,
      title: "Weekly Summary",
      body: "Here’s what you missed this week.",
      date: "2025-07-28",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications", style: AppFontStyle.font20Bold),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return NotificationCard(
            post_id: notification.postId,
            title: notification.title,
            description: notification.body,
            date: notification.date,
          );
        },
      ),
    );
  }
}
