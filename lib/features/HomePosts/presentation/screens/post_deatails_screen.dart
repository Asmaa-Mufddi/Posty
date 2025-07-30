import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/AppColors/AppColors.dart';
import '../../../../core/constant/semi_lottie/loading_circle_widget.dart';
import '../../../../core/constant/styles/text_style.dart';
import '../../../../core/routing/route_string.dart';
import '../controller/posts_controller.dart';
import '../widgets/comment_card.dart';


class PostDetailsScreen extends StatelessWidget {
  final int postId;
  final PostsController controller = Get.find<PostsController>();

  PostDetailsScreen({Key? key, required this.postId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Trigger API calls
    controller.getPostById(postId);
    controller.getCommentsForPost(postId);

    return Scaffold(
      appBar: AppBar(
        title: Text("Post Details", style: AppFontStyle.font20Bold),
      ),
      body: Obx(() {
        if (controller.postDetailsLoading.value || controller.commentsLoading.value) {
          return const Center(child: LoadingCircleWidget());
        }

        final post = controller.selectedPost.value;
        final comments = controller.comments;

        if (post == null) {
          return Center(child: Text("Post not found", style: AppFontStyle.font20Bold));
        }

        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap:(){
                      Get.toNamed('$UserDetailsRoute?userId=${post.userId}');
                    },
                    child: CircleAvatar(
                      backgroundColor: AppColor.blue,
                      radius: 20,
                      child: Text(
                        post.userId != null ? post.userId.toString() : '?',
                        style: AppFontStyle.font18Bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      post.title ?? '',
                      style: AppFontStyle.font18Bold,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left:50.0),
                child: Text(
                  textAlign:TextAlign.start,
                  post.body ?? '',
                  style: AppFontStyle.font16Regular,
                ),
              ),
              const SizedBox(height:5),
              Divider(color:Colors.grey.shade300,),
              // Comments count row
              Row(
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Comments : ${comments.length}",
                    style: AppFontStyle.font20Bold,
                  ),
                ],
              ),
              const SizedBox(height:10),

              // Comments list
              Expanded(
               child:  ListView.separated(
                  itemCount: comments.length,
                  separatorBuilder: (_, __) => const SizedBox(height:4),
                  itemBuilder: (context, index) {
                    final comment = comments[index];
                    return CommentCard(
                      name: comment.name ?? 'Unknown',
                      email: comment.email ?? '',
                      body: comment.body ?? '',
                    );
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
