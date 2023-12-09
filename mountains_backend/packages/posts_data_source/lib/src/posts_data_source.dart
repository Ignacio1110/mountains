import 'package:posts_data_source/posts_data_source.dart';

/// An interface for a posts data source.
/// A posts data source supports basic C.R.U.D operations.
/// * C - Create，建立
/// * R - Read，讀取
/// * U - Update，更新
/// * D - Delete，刪除
abstract interface class PostsDataSource {
  /// 建立新的貼文存入，並回傳此貼文資料
  Future<Post> create(Post post);

  /// 讀取所有貼文.
  Future<List<Post>> readAll();

  /// 如果 ID 存在則讀取並回傳貼文
  Future<Post?> read(String id);

  /// 更新對應 ID 的貼文，回傳更新後的貼文
  Future<Post> update(String id, Post post);

  /// 刪除對應 ID 的貼文
  Future<void> delete(String id);
}
