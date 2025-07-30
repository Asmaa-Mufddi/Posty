import '../data/model/Post_Model/post_model.dart';
import '../data/model/Comment_Model/comment_model.dart';
import '../data/model/User_Model/user_model.dart';

abstract class PostsAbstractRepository {
  Future<List<PostModel>> getPosts();
  Future<PostModel> getPostById(int id);
  Future<List<CommentModel>> getCommentsForPost(int postId);
  Future<UserModel> getUserById(int userId);
}
