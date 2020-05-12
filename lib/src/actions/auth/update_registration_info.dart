// File created by
// Lung Razvan <long1eu>
// on 24/04/2020

library update_registration_info;

import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/models/auth/registration_info.dart';

part 'update_registration_info.g.dart';

abstract class UpdateRegistrationInfo implements Built<UpdateRegistrationInfo, UpdateRegistrationInfoBuilder> {
  factory UpdateRegistrationInfo(RegistrationInfo info) {
    return _$UpdateRegistrationInfo((UpdateRegistrationInfoBuilder b) => b.info = info.toBuilder());
  }

  UpdateRegistrationInfo._();

  RegistrationInfo get info;
}
