import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'core/constant/Theme/App_Theme.dart';
import 'core/constant/Theme/Theme_controller.dart';
import 'core/routing/route_string.dart';
import 'core/routing/router.dart';
import 'core/helper/firebase/notification_manger.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationManager.init();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeController.theme,
      initialRoute: splashRoute,
      getPages: appRoutes,

    );
  }
}
