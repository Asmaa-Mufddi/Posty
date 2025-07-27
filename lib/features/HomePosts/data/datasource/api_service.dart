import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../model/Post_Model/post_model.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @GET("/posts")
  Future<List<PostModel>> getPosts();
}
