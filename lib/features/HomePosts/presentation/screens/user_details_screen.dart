import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/semi_lottie/loading_circle_widget.dart';
import '../../../../core/constant/styles/text_style.dart';
import '../controller/posts_controller.dart';
import '../widgets/user_card.dart'; // تأكد من وجوده هنا

class UserDetailsScreen extends StatelessWidget {
  final int userId;
  final PostsController controller = Get.find<PostsController>();

  UserDetailsScreen({Key? key, required this.userId}) : super(key: key) {
    controller.getUserById(userId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details', style: AppFontStyle.font20Bold),
      ),
      body: Obx(() {
        if (controller.userLoading.value) {
          return const Center(child: LoadingCircleWidget());
        }

        final user = controller.user.value;
        if (user == null) {
          return Center(
            child: Text('User not found', style: AppFontStyle.font18Medium),
          );
        }

        return Padding(
          padding: const EdgeInsets.all(16),
          child: UserCard(user: user),
        );
      }),
    );
  }
}
