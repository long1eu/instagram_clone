// File created by
// Lung Razvan <long1eu>
// on 30/04/2020

library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/models/app_user.dart';
import 'package:instagram_clone/src/models/registration_info.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppState,
  AppUser,
  RegistrationInfo,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();
