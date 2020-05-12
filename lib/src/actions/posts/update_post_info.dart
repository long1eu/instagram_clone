// File created by
// Lung Razvan <long1eu>
// on 07/05/2020

library update_post_info;

import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/actions/actions.dart';
import 'package:instagram_clone/src/models/posts/save_post_info.dart';

part 'update_post_info.g.dart';

abstract class UpdatePostInfo //
    implements
        Built<UpdatePostInfo, UpdatePostInfoBuilder>,
        AppAction //
{
  factory UpdatePostInfo(SavePostInfo info) {
    return _$UpdatePostInfo((UpdatePostInfoBuilder b) => b.info = info.toBuilder());
  }

  UpdatePostInfo._();

  SavePostInfo get info;
}
