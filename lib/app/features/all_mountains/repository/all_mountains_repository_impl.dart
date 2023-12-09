import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../model/all_mountains_model.dart';
import 'all_mountains_repository.dart';

class AllMountainsRepositoryImpl extends AllMountainsRepository {
  @override
  Future<List<PostModel>> getPosts() async {
    await Future.delayed(const Duration(seconds: 1));

    // TODO(Me): 3. 使用 Dio call API 存取後端資料
    throw UnimplementedError();
  }

  @override
  Future<List<PostModel>> fetchPosts(PostModel last) async {
    await Future.delayed(const Duration(seconds: 2));
    return [];
  }
}

final allMountainsRepositoryProvider = Provider<AllMountainsRepository>((ref) {
  return AllMountainsRepositoryImpl();
});
