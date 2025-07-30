import 'package:flutter/material.dart';
import '../../../../core/constant/AppColors/AppColors.dart';
import '../../../../core/constant/styles/text_style.dart';

class CommentCard extends StatelessWidget {
  final String name;
  final String email;
  final String body;

  const CommentCard({
    Key? key,
    required this.name,
    required this.email,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firstLetter = name.isNotEmpty ? name[0].toUpperCase() : '?';

    return Card(
      elevation:2,
      shadowColor: AppColor.blue.withOpacity(0.8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 6,horizontal:5),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppFontStyle.font18Bold,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: AppFontStyle.font14Regular.copyWith(color:Colors.amber),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    body,
                    style: AppFontStyle.font12Regular,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
