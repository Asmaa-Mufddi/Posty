import 'package:get/get.dart';
import 'package:posty/core/routing/route_string.dart';
import '../../features/HomePosts/presentation/screens/home_posts_screen.dart';
import '../../features/HomePosts/presentation/screens/post_deatails_screen.dart';
import '../../features/HomePosts/presentation/screens/user_details_screen.dart';
import '../../features/Notifications/presentation/screen/notification_screen.dart';
import '../../features/Intro/splash_Screen.dart';


final List<GetPage> appRoutes = [
  GetPage(
    name: splashRoute,
    page: () => Splash(),
  ),
  GetPage(
    name: HomeRoute,
    page: () => HomePostsScreen(),
  ),
  GetPage(
    name: PostDetailsRoute,
    page: () => PostDetailsScreen(
      postId: int.parse(Get.parameters['postId'] ?? '0'),
    ),
  ),
  GetPage(
    name: UserDetailsRoute,
    page: () => UserDetailsScreen(
      userId: int.parse(Get.parameters['userId'] ?? '0'),
    ),
  ),
  GetPage(
    name: NotificationScreenRoute,
    page: () => NotificationScreen(),
  ),
];
