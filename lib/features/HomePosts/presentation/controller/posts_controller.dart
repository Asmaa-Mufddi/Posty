import 'package:get/get.dart';
import '../../data/model/Post_Model/post_model.dart';
import '../../data/model/Comment_Model/comment_model.dart';
import '../../data/model/User_Model/user_model.dart';
import '../../domain/posts_abstract_repo.dart';

class PostsController extends GetxController {
  final PostsAbstractRepository repo;

  PostsController(this.repo);

  /// Posts List
  var isLoading = false.obs;
  var posts = <PostModel>[].obs;
  var errorMessage = ''.obs;

  ///Post Details
  var selectedPost = Rxn<PostModel>();
  var postDetailsLoading = false.obs;

  ///Comments
  var comments = <CommentModel>[].obs;
  var commentsLoading = false.obs;

  /// User Info
  var user = Rxn<UserModel>();
  var userLoading = false.obs;

  @override
  void onInit() {
    getPosts();
    super.onInit();
  }

  /// get all posts
  void getPosts() async {
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

  /// get single post
  Future<void> getPostById(int id) async {
    try {
      postDetailsLoading.value = true;
      selectedPost.value = await repo.getPostById(id);
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      postDetailsLoading.value = false;
    }
  }

  /// get comments for a post
  Future<void> getCommentsForPost(int postId) async {
    try {
      commentsLoading.value = true;
      comments.assignAll(await repo.getCommentsForPost(postId));
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      commentsLoading.value = false;
    }
  }

  /// get user info by user ID
  Future<void> getUserById(int userId) async {
    try {
      userLoading.value = true;
      user.value = await repo.getUserById(userId);
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      userLoading.value = false;
    }
  }
}
