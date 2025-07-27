import 'package:get/get.dart';
import '../../data/model/Post_Model/post_model.dart';
import '../../data/repo/post_repo_impl.dart';
import '../../domain/posts_abstract_repo.dart';

class PostsController extends GetxController {
  final PostsAbstractRepository repo;

  PostsController(this.repo);

  var isLoading = false.obs;
  var posts = <PostModel>[].obs;
  var errorMessage = ''.obs;

  @override
  void onInit() {
    GetPosts();
    super.onInit();
  }

  void GetPosts() async {
    try {
      isLoading.value = true;
      final result = await repo.getPosts();
      posts.assignAll(result);
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }
}
