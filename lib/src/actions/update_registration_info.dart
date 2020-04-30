// File created by
// Lung Razvan <long1eu>
// on 24/04/2020

library update_registration_info;

import 'package:built_value/built_value.dart';
import 'package:instagram_clone/src/models/registration_info.dart';

part 'update_registration_info.g.dart';

abstract class UpdateRegistrationInfo implements Built<UpdateRegistrationInfo, UpdateRegistrationInfoBuilder> {
  factory UpdateRegistrationInfo([void Function(UpdateRegistrationInfoBuilder b) updates]) = _$UpdateRegistrationInfo;

  UpdateRegistrationInfo._();

  RegistrationInfo get info;
}
