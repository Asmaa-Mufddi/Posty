import 'package:flutter/material.dart';
import 'package:posty/core/constant/AppColors/AppColors.dart';
import 'package:posty/core/constant/styles/text_style.dart';

class PostCard extends StatelessWidget {
  final String title;
  final String body;
  final bool isDarkMode;

  const PostCard({
    Key? key,
    required this.title,
    required this.body,
    required this.isDarkMode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: AppColor.blue,
            width: 4,
          ),
        ),
        borderRadius: BorderRadius.circular(12),
        color: isDarkMode ? Colors.grey.shade900 : Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: const Offset(0, 4),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppFontStyle.font18Bold),
          const SizedBox(height: 8),
          Text(body, style: AppFontStyle.font14Regular),
        ],
      ),
    );
  }
}
