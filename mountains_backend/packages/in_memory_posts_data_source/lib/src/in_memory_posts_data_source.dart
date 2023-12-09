import 'package:posts_data_source/posts_data_source.dart';

/// {@template in_memory_posts_data_source}
/// An in-memory implementation of the PostsDataSource interface.
/// {@endtemplate}
class InMemoryPostsDataSource implements PostsDataSource {
  /// Map of ID -> Post
  final _cache = <String, Post>{
    '4d5b7ef1-12b2-4b74-85db-384e32fa2ec0': Post.fromJson(
      const {
        'id': '4d5b7ef1-12b2-4b74-85db-384e32fa2ec0',
        'authorId': 'bb45aaa6-a01b-458b-aa47-51a1be01d331',
        'mountainName': '宜蘭縣南澳鄉',
        'title': '蘇花古道：大南澳越嶺段',
        'content':
            '中央山脈脊樑國家步道系統\n蘇花古道建造於清朝同治13 年(1874 年)，是聯絡蘇澳與花蓮之間最早的一條官道；日人19 世紀於蘇花海岸之間先後開鑿了北段的大南澳路、南段的沿岸理番道路及東海徒步道，即今日蘇花公路的前身，但早已荒廢舊跡難尋。經過調查後整建「蘇花古道-- 大南澳越嶺段」。 \r\n\r\n古道呈南北縱向，北側為軍方管制道路無法通行，建議由南側登山口往北走再折返，海拔落差近七百公尺，來回行走約5小時，路程頗具挑戰性。 從南口入古道，一路陡上，約十餘分鐘後抵達一處較平緩的空曠處，路旁有處碉堡遺跡以及水泥護欄，此為崩坍廢棄的舊蘇花公路。\r\n\r\n沿路隔著樹林間隙，可以遙望汪洋大海。在1.2 K里程處抵達休息平臺，即是南澳嶺的主峰所在，再攀至0.6 公里附近的觀景臺，古道在此豁然開朗。繼續陡下至鞍部，再爬坡至烏石鼻戰備道路上的北端起點。\r\n\n步道長度：4.1公里\n宜蘭分署\n        ',
        'img': 'https://recreation.forest.gov.tw/Files/RT/index/001.jpg',
        'tags': ['一天', '土徑步道、土木階梯'],
        'views': 2,
        'likes': 0,
        'comments': 0,
      },
    ),
  };

  @override
  Future<Post> create(Post post) {
    // TODO(Me): implement create
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String id) {
    // TODO(Me): implement delete
    throw UnimplementedError();
  }

  @override
  Future<Post?> read(String id) {
    // TODO(Me): implement read
    throw UnimplementedError();
  }

  @override
  Future<List<Post>> readAll() async {
    return _cache.values.toList();
  }

  @override
  Future<Post> update(String id, Post post) {
    // TODO(Me): implement update
    throw UnimplementedError();
  }
}
