import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constant/styles/text_style.dart';
import '../../../../core/constant/Theme/Theme_controller.dart';
import '../../../../core/constant/semi_lottie/loading_circle_widget.dart';
import '../../../../core/helper/dio_client/dio_client.dart';
import '../../../../core/routing/route_string.dart';
import '../../domain/posts_abstract_repo.dart';
import '../../data/repo/post_repo_impl.dart';
import '../../data/datasource/api_service.dart';
import '../controller/posts_controller.dart';
import '../widgets/post_card.dart';

class HomePostsScreen extends StatefulWidget {
  const HomePostsScreen({super.key});

  @override
  State<HomePostsScreen> createState() => _HomePostsScreenState();
}

class _HomePostsScreenState extends State<HomePostsScreen> {
  late final ThemeController themeController;
  late final PostsController postsController;

  @override
  void initState() {
    super.initState();

    if (!Get.isRegistered<ThemeController>()) {
      Get.put(ThemeController());
    }
    themeController = Get.find<ThemeController>();

    if (!Get.isRegistered<PostsAbstractRepository>()) {
      final dio = createDio();
      final apiService = ApiService(dio);
      final repo = PostsRepoImpl(apiService);
      Get.put<PostsAbstractRepository>(repo);
    }

    if (!Get.isRegistered<PostsController>()) {
      final repo = Get.find<PostsAbstractRepository>();
      Get.put(PostsController(repo));
    }

    postsController = Get.find<PostsController>();
    postsController.getPosts();
  }

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
              size: 28,
            ),
          )),
          SizedBox(width:10,),
          Padding(
            padding: const EdgeInsets.only(right:18.0),
            child:IconButton(onPressed: (){
              Get.toNamed(NotificationScreenRoute);
            }, icon:Icon(Icons.notifications_active_outlined,size:24,))
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FirebaseCrashlytics.instance.crash();
        },
        backgroundColor: Colors.red,
        tooltip: 'Force Crash',
        child: const Icon(Icons.warning),
      ),
      body: Obx(() {
        if (postsController.isLoading.value) {
          return const Center(child: LoadingCircleWidget());
        }

        if (postsController.errorMessage.isNotEmpty) {
          return Center(
              child: Text(
                postsController.errorMessage.value,
                style: AppFontStyle.font16Medium,
              ));
        }

        final posts = postsController.posts;

        if (posts.isEmpty) {
          return  Center(child: Text("No posts found",style:AppFontStyle.font18Bold));
        }

        return ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            final post = posts[index];
            return PostCard(
              id:post.id,
              title: post.title,
              body: post.body,
              isDarkMode: themeController.isDarkMode.value,
            );
          },
        );
      }),
    );
  }
}
