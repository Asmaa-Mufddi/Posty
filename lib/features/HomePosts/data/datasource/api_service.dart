import 'package:dio/dio.dart';
import 'package:posty/features/HomePosts/data/model/Post_Model/post_model.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<List<PostModel>> getPosts() async {
    try {
      final response = await _dio.get('/posts');

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => PostModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load posts: ${response.statusCode}');
      }
    } on DioException catch (e) {
      throw Exception('Dio error: ${e.message}');
    }
  }
}
