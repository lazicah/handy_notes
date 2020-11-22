import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:handy_notes/core/models/base/base_model.dart';
import 'package:handy_notes/core/models/serializers.dart';

part 'notes.g.dart';

abstract class NotesEntity extends Object
    with BaseEntity
    implements Built<NotesEntity, NotesEntityBuilder> {
  // Fields
  @override
  @memoized
  int get hashCode;

  @BuiltValueField(wireName: 'note_id')
  String get noteId;

  String get title;

  String get content;

  @nullable
  BuiltList<String> get tags;

  @nullable
  @BuiltValueField(wireName: 'label_color')
  String get labelColor;

  NotesEntity._();

  factory NotesEntity([void Function(NotesEntityBuilder) updates]) =
      _$NotesEntity;

  String toJson() {
    return json.encode(serializers.serializeWith(NotesEntity.serializer, this));
  }

  static NotesEntity fromJson(String jsonString) {
    return serializers.deserializeWith(
        NotesEntity.serializer, json.decode(jsonString));
  }

  static Serializer<NotesEntity> get serializer => _$notesEntitySerializer;
}
