import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:posty/core/constant/AppColors/AppColors.dart';
import '../../../../core/constant/styles/text_style.dart';
import '../../../../core/routing/route_string.dart';

class NotificationCard extends StatelessWidget {
  final int post_id;
  final String title;
  final String description;
  final String date;

  const NotificationCard({
    Key? key,
    required this.post_id,
    required this.title,
    required this.description,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
            Get.toNamed('$PostDetailsRoute?postId=$post_id');
      },
      child: Container(
        width: 360,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color:AppColor.blue.withOpacity(0.5),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.notifications_active,color:Colors.orange),
                  SizedBox(width:3,),
                  Text(
                    title,
                    style: AppFontStyle.font18Bold,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: AppFontStyle.font14Medium,
              ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  date,
                  style: AppFontStyle.font12Regular,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
