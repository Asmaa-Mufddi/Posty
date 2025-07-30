import 'package:flutter/material.dart';
import 'package:posty/core/constant/AppColors/AppColors.dart';
import '../../data/model/User_Model/user_model.dart';
import '../../../../core/constant/styles/text_style.dart';

class UserCard extends StatelessWidget {
  final UserModel user;

  const UserCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 4,
      shadowColor: AppColor.blue.withOpacity(0.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.person, size: 30),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(user.name, style: AppFontStyle.font24Bold),
                      Text('@${user.username}',
                          style: AppFontStyle.font16Regular.copyWith(color: Colors.grey)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(),


            _buildInfoRow(Icons.email, user.email),
            const SizedBox(height: 12),
            _buildInfoRow(Icons.phone, user.phone),
            const SizedBox(height: 12),
            _buildInfoRow(Icons.language, user.website),
            const SizedBox(height: 20),
            const Divider(),


            Text('Address', style: AppFontStyle.font18Bold),
            const SizedBox(height: 8),
            Text(
              '${user.address.street}, ${user.address.suite}\n'
                  '${user.address.city}, ${user.address.zipcode}',
              style: AppFontStyle.font16Regular,
            ),
            const SizedBox(height: 20),
            const Divider(),


            Text('Company', style: AppFontStyle.font18Bold),
            const SizedBox(height: 8),
            Text(user.company.name, style: AppFontStyle.font18Medium),
            Text('"${user.company.catchPhrase}"', style: AppFontStyle.font14Regular),
            Text(user.company.bs, style: AppFontStyle.font16Regular),
          ],
        ),
      ),
    );
  }


  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 20, color:AppColor.blue),
        const SizedBox(width: 8),
        Expanded(child: Text(text, style: AppFontStyle.font16Regular)),
      ],
    );
  }
}
