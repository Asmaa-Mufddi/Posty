import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import '../../../firebase_options.dart';
import 'firebase_notification_service.dart';

class NotificationManager {
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  static Future<void> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    await FirebaseNotificationService.initialize();

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("🔔 Foreground Message: ${message.notification?.title}");

      analytics.logEvent(
        name: 'notification_received',
        parameters: {
          'title': message.notification?.title ?? 'No Title',
          'body': message.notification?.body ?? 'No Body',
          'message_id': message.messageId ?? 'no_message_id',
        },
      );

      FirebaseNotificationService.showFlutterNotification(message);
    });

    String? token = await FirebaseMessaging.instance.getToken();
    print("🔑 FCM Token: $token");
  }

  static Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    await Firebase.initializeApp();
    await analytics.logEvent(
      name: 'notification_received_background',
      parameters: {
        'title': message.notification?.title ?? 'No Title',
        'body': message.notification?.body ?? 'No Body',
      'message_id': message.messageId ?? 'no_message_id',
      },
    );

    print("📩 Background Message: ${message.notification?.title}");
  }
}
