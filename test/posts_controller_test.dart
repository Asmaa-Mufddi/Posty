import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:posty/features/HomePosts/presentation/controller/posts_controller.dart';
import 'package:posty/features/HomePosts/data/model/Post_Model/post_model.dart';
import 'Mocks.mocks.dart';

void main() {
  late MockPostsAbstractRepository mockRepo;
  late PostsController controller;

  final List<PostModel> testPosts = [
    PostModel(userId: 1, id: 1, title: 'Title 1', body: 'Body 1'),
    PostModel(userId: 2, id: 2, title: 'Title 2', body: 'Body 2'),
  ];

  setUp(() {
    mockRepo = MockPostsAbstractRepository();
    controller = PostsController(mockRepo);
  });

  test('getPosts() loads posts and updates state', () async {
    when(mockRepo.getPosts()).thenAnswer((_) async => testPosts);

    await controller.getPosts();

    expect(controller.isLoading.value, false);
    expect(controller.posts.length, 2);
    expect(controller.posts[0].title, 'Title 1');
    expect(controller.errorMessage.value, '');
  });

  test('getPosts() sets errorMessage if exception thrown', () async {
    when(mockRepo.getPosts()).thenThrow(Exception('Something went wrong'));

    await controller.getPosts();

    expect(controller.isLoading.value, false);
    expect(controller.posts.isEmpty, true);
    expect(controller.errorMessage.value, contains('Something went wrong'));
  });
}
