// File created by
// Lung Razvan <long1eu>
// on 07/05/2020

library save_post_info;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:instagram_clone/src/models/serializers.dart';

part 'save_post_info.g.dart';

abstract class SavePostInfo implements Built<SavePostInfo, SavePostInfoBuilder> {
  factory SavePostInfo([void Function(SavePostInfoBuilder b) updates]) = _$SavePostInfo;

  factory SavePostInfo.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  SavePostInfo._();

  @nullable
  String get description;

  @nullable
  BuiltList<String> get pictures;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<SavePostInfo> get serializer => _$savePostInfoSerializer;
}
