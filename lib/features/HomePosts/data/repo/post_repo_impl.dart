import '../../domain/posts_abstract_repo.dart';
import '../datasource/api_service.dart';
import '../model/Post_Model/post_model.dart';

class PostsRepoImpl implements PostsAbstractRepository {
  final ApiService apiService;

  PostsRepoImpl(this.apiService);

  @override
  Future<List<PostModel>> getPosts() {
    return apiService.getPosts();
  }
}