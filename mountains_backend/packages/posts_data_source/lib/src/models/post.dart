import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'post.g.dart';

/// {@template post_model}
/// A single post item.
///
/// 包含 [id], [mountainName], [title], [content], [img], [tags], [views], [likes],
/// [comments]
///
/// 如果 [id] 不是 null，它不應該是空字串
/// 如果 [id] 是 null，會需要我們在稍後產一個 id 給它
///
/// [Post]s are immutable and can be copied using [copyWith], in addition to
/// being serialized and deserialized using [toJson] and [Post.fromJson]
/// respectively.
/// {@endtemplate}
@immutable
@JsonSerializable()
class Post extends Equatable {
  /// {@macro post_model}
  Post({
    required this.authorId,
    required this.mountainName,
    required this.title,
    required this.content,
    required this.img,
    required this.tags,
    required this.views,
    required this.likes,
    required this.comments,
    this.id,
  }) : assert(id == null || id.isNotEmpty, 'id cannot be empty');

  /// Creates a Post from Json map
  factory Post.fromJson(Map<String, dynamic> data) => _$PostFromJson(data);

  /// post 的唯一值 id
  ///
  /// 不能為空字串
  final String? id;

  /// 作者的 id，對應 userId
  final String authorId;

  /// 山岳名稱、步道名稱
  final String mountainName;

  /// 貼文標題
  final String title;

  /// 貼文內容
  final String content;

  /// 貼文圖片 url
  final String img;

  /// 貼文的標籤
  ///
  /// 例如：初級、中級
  final List<String> tags;

  /// 點閱數
  final int views;

  /// 按讚數
  final int likes;

  /// 留言數
  final int comments;

  /// Creates a copy of the current Post with property changes
  Post copyWith({
    String? id,
    String? authorId,
    String? mountainName,
    String? title,
    String? content,
    String? img,
    List<String>? tags,
    int? views,
    int? likes,
    int? comments,
  }) {
    return Post(
      id: id ?? this.id,
      authorId: authorId ?? this.authorId,
      mountainName: mountainName ?? this.mountainName,
      title: title ?? this.title,
      content: content ?? this.content,
      img: img ?? this.img,
      tags: tags ?? this.tags,
      views: views ?? this.views,
      likes: likes ?? this.likes,
      comments: comments ?? this.comments,
    );
  }

  /// Creates a Json map from a Post
  Map<String, dynamic> toJson() => _$PostToJson(this);

  @override
  List<Object?> get props => [
        id,
        authorId,
        mountainName,
        title,
        content,
        img,
        tags,
        views,
        likes,
        comments,
      ];

  /// Creates a toString() override for Post
  @override
  String toString() =>
      'Post(id: $id, authorId: $authorId, mountainName: $mountainName, title: $title, content: $content, img: $img, tags: $tags, views: $views, likes: $likes, comments: $comments)';
}
