import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:handy_notes/core/models/base/base_model.dart';

import '../serializers.dart';

part 'user_model.g.dart';

abstract class UserEntity extends Object
    with BaseEntity
    implements Built<UserEntity, UserEntityBuilder> {
  // Fields
  @override
  @memoized
  int get hashCode;

  @nullable
  @BuiltValueField(wireName: 'uid')
  String get userId;

  @BuiltValueField(wireName: 'full_name')
  String get fullName;

  @nullable
  String get email;

  UserEntity._();

  factory UserEntity([void Function(UserEntityBuilder) updates]) = _$UserEntity;

  String toJson() {
    return json.encode(serializers.serializeWith(UserEntity.serializer, this));
  }

  static UserEntity fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserEntity.serializer, json.decode(jsonString));
  }

  static Serializer<UserEntity> get serializer => _$userEntitySerializer;
}
