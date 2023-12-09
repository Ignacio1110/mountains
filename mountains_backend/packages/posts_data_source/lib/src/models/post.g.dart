// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      authorId: json['authorId'] as String,
      mountainName: json['mountainName'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      img: json['img'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      views: json['views'] as int,
      likes: json['likes'] as int,
      comments: json['comments'] as int,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'authorId': instance.authorId,
      'mountainName': instance.mountainName,
      'title': instance.title,
      'content': instance.content,
      'img': instance.img,
      'tags': instance.tags,
      'views': instance.views,
      'likes': instance.likes,
      'comments': instance.comments,
    };
