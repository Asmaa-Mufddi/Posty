import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:posty/core/constant/styles/text_style.dart';
import 'package:posty/features/HomePosts/presentation/screens/home_posts_screen.dart';

import '../../../../core/constant/AppColors/AppColors.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePostsScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DefaultTextStyle(
              style: AppFontStyle.font22Bold.copyWith(color:AppColor.blue),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('P O S T Y'),
                ],
                isRepeatingAnimation: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
