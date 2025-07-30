import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../model/Post_Model/post_model.dart';
import '../model/Comment_Model/comment_model.dart';
import '../model/User_Model/user_model.dart';

part 'api_service.g.dart';
@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/posts")
  Future<List<PostModel>> getPosts();


  @GET("/posts/{id}")
  Future<PostModel> getPostById(@Path("id") int id);


  @GET("/posts/{id}/comments")
  Future<List<CommentModel>> getCommentsForPost(@Path("id") int postId);

  @GET("/users/{id}")
  Future<UserModel> getUserById(@Path("id") int userId);
}
