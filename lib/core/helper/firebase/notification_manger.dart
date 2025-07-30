import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import '../../../firebase_options.dart';
import 'firebase_notification_service.dart';

class NotificationManager {
  static Future<void> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    await FirebaseNotificationService.initialize();

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("🔔 Foreground Message: ${message.notification?.title}");
      FirebaseNotificationService.showFlutterNotification(message);
    });

    String? token = await FirebaseMessaging.instance.getToken();
    print("🔑 FCM Token: $token");
  }

  @pragma('vm:entry-point')
  static Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    await Firebase.initializeApp();
    print("📩 Background Message: ${message.notification?.title}");
  }
}
