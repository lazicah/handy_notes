import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:handy_notes/core/utils/formatting.dart';

part 'base_model.g.dart';

abstract class BaseEntity {
  // Fields
  static int counter = 0;

  static String get nextId => '${--counter}';

  @nullable
  bool get isChanged;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  int get createdAt;

  @nullable
  @BuiltValueField(wireName: 'updated_at')
  int get updatedAt;

  @nullable
  @BuiltValueField(wireName: 'archived_at')
  int get archivedAt;

  @nullable
  @BuiltValueField(wireName: 'is_deleted')
  bool get isDeleted;

  @nullable
  @BuiltValueField(wireName: 'user_id')
  String get createdUserId;
}

class EntityType extends EnumClass {
  static Serializer<EntityType> get serializer => _$entityTypeSerializer;

  // static const EntityType yes = _$yes;
  static const EntityType user = _$user;
  static const EntityType project = _$project;

  const EntityType._(String name) : super(name);

  static BuiltSet<EntityType> get values => _$values;
  static EntityType valueOf(String name) => _$valueOf(name);
}

abstract class SelectableEntity {
  String get id;

  bool matchesFilter(String filter) => true;

  String matchesFilterValue(String filter) => null;

  String get listDisplayName => 'Error: listDisplayName not set';

  double get listDisplayAmount => null;

  FormatNumberType get listDisplayAmountType => FormatNumberType.money;
}
