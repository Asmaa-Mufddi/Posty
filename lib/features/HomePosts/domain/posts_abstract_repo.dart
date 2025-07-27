import '../data/model/Post_Model/post_model.dart';

abstract class PostsAbstractRepository {
  Future<List<PostModel>> getPosts();
}