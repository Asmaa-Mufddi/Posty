import 'package:dio/dio.dart';
import 'package:posty/features/HomePosts/data/model/Post_Model/post_model.dart';
import 'package:retrofit/http.dart';

import '../logger/ParseErrorLogger.dart';

part 'Api_service.g.dart';


@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class ApiService {
  factory ApiService(
      Dio dio, {
        String baseUrl,
        ParseErrorLogger? errorLogger,
      }) = _ApiService;

  @GET('posts')
  Future<List<PostModel>> getPosts();
}