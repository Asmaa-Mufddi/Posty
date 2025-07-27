import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posty/core/constant/styles/text_style.dart';
import '../../../../core/constant/Theme/Theme_controller.dart';

class HomePostsScreen extends StatelessWidget {
  HomePostsScreen({super.key});

  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("POSTY", style: AppFontStyle.font20Bold),
        actions: [
          Obx(() => IconButton(
            onPressed: () {
              themeController.toggleTheme();
            },
            icon: Icon(
              themeController.isDarkMode.value
                  ? Icons.dark_mode_rounded
                  : Icons.light_mode_rounded,
              size: 35,
            ),
          )),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "HOME",
              style: AppFontStyle.font18Bold,
            ),
          ),
        ],
      ),
    );
  }
}
