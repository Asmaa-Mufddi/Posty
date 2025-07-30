import '../../domain/posts_abstract_repo.dart';
import '../datasource/api_service.dart';
import '../model/Post_Model/post_model.dart';
import '../model/Comment_Model/comment_model.dart';
import '../model/User_Model/user_model.dart';

class PostsRepoImpl implements PostsAbstractRepository {
  final ApiService apiService;

  PostsRepoImpl(this.apiService);

  @override
  Future<List<PostModel>> getPosts() {
    return apiService.getPosts();
  }

  @override
  Future<PostModel> getPostById(int id) {
    return apiService.getPostById(id);
  }

  @override
  Future<List<CommentModel>> getCommentsForPost(int postId) {
    return apiService.getCommentsForPost(postId);
  }

  @override
  Future<UserModel> getUserById(int userId) {
    return apiService.getUserById(userId);
  }
}
