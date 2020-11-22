// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EntityType _$user = const EntityType._('user');
const EntityType _$project = const EntityType._('project');

EntityType _$valueOf(String name) {
  switch (name) {
    case 'user':
      return _$user;
    case 'project':
      return _$project;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<EntityType> _$values =
    new BuiltSet<EntityType>(const <EntityType>[
  _$user,
  _$project,
]);

Serializer<EntityType> _$entityTypeSerializer = new _$EntityTypeSerializer();

class _$EntityTypeSerializer implements PrimitiveSerializer<EntityType> {
  @override
  final Iterable<Type> types = const <Type>[EntityType];
  @override
  final String wireName = 'EntityType';

  @override
  Object serialize(Serializers serializers, EntityType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  EntityType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EntityType.valueOf(serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
