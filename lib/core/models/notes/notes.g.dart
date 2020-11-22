// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotesEntity> _$notesEntitySerializer = new _$NotesEntitySerializer();

class _$NotesEntitySerializer implements StructuredSerializer<NotesEntity> {
  @override
  final Iterable<Type> types = const [NotesEntity, _$NotesEntity];
  @override
  final String wireName = 'NotesEntity';

  @override
  Iterable<Object> serialize(Serializers serializers, NotesEntity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'note_id',
      serializers.serialize(object.noteId,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
    ];
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.labelColor != null) {
      result
        ..add('label_color')
        ..add(serializers.serialize(object.labelColor,
            specifiedType: const FullType(String)));
    }
    if (object.isChanged != null) {
      result
        ..add('isChanged')
        ..add(serializers.serialize(object.isChanged,
            specifiedType: const FullType(bool)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(int)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(int)));
    }
    if (object.archivedAt != null) {
      result
        ..add('archived_at')
        ..add(serializers.serialize(object.archivedAt,
            specifiedType: const FullType(int)));
    }
    if (object.isDeleted != null) {
      result
        ..add('is_deleted')
        ..add(serializers.serialize(object.isDeleted,
            specifiedType: const FullType(bool)));
    }
    if (object.createdUserId != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(object.createdUserId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  NotesEntity deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotesEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'note_id':
          result.noteId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'label_color':
          result.labelColor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isChanged':
          result.isChanged = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'archived_at':
          result.archivedAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'is_deleted':
          result.isDeleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'user_id':
          result.createdUserId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NotesEntity extends NotesEntity {
  @override
  final String noteId;
  @override
  final String title;
  @override
  final String content;
  @override
  final BuiltList<String> tags;
  @override
  final String labelColor;
  @override
  final bool isChanged;
  @override
  final int createdAt;
  @override
  final int updatedAt;
  @override
  final int archivedAt;
  @override
  final bool isDeleted;
  @override
  final String createdUserId;

  factory _$NotesEntity([void Function(NotesEntityBuilder) updates]) =>
      (new NotesEntityBuilder()..update(updates)).build();

  _$NotesEntity._(
      {this.noteId,
      this.title,
      this.content,
      this.tags,
      this.labelColor,
      this.isChanged,
      this.createdAt,
      this.updatedAt,
      this.archivedAt,
      this.isDeleted,
      this.createdUserId})
      : super._() {
    if (noteId == null) {
      throw new BuiltValueNullFieldError('NotesEntity', 'noteId');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('NotesEntity', 'title');
    }
    if (content == null) {
      throw new BuiltValueNullFieldError('NotesEntity', 'content');
    }
  }

  @override
  NotesEntity rebuild(void Function(NotesEntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotesEntityBuilder toBuilder() => new NotesEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotesEntity &&
        noteId == other.noteId &&
        title == other.title &&
        content == other.content &&
        tags == other.tags &&
        labelColor == other.labelColor &&
        isChanged == other.isChanged &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        archivedAt == other.archivedAt &&
        isDeleted == other.isDeleted &&
        createdUserId == other.createdUserId;
  }

  int __hashCode;
  @override
  int get hashCode {
    return __hashCode ??= $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, noteId.hashCode),
                                            title.hashCode),
                                        content.hashCode),
                                    tags.hashCode),
                                labelColor.hashCode),
                            isChanged.hashCode),
                        createdAt.hashCode),
                    updatedAt.hashCode),
                archivedAt.hashCode),
            isDeleted.hashCode),
        createdUserId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotesEntity')
          ..add('noteId', noteId)
          ..add('title', title)
          ..add('content', content)
          ..add('tags', tags)
          ..add('labelColor', labelColor)
          ..add('isChanged', isChanged)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('archivedAt', archivedAt)
          ..add('isDeleted', isDeleted)
          ..add('createdUserId', createdUserId))
        .toString();
  }
}

class NotesEntityBuilder implements Builder<NotesEntity, NotesEntityBuilder> {
  _$NotesEntity _$v;

  String _noteId;
  String get noteId => _$this._noteId;
  set noteId(String noteId) => _$this._noteId = noteId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  String _labelColor;
  String get labelColor => _$this._labelColor;
  set labelColor(String labelColor) => _$this._labelColor = labelColor;

  bool _isChanged;
  bool get isChanged => _$this._isChanged;
  set isChanged(bool isChanged) => _$this._isChanged = isChanged;

  int _createdAt;
  int get createdAt => _$this._createdAt;
  set createdAt(int createdAt) => _$this._createdAt = createdAt;

  int _updatedAt;
  int get updatedAt => _$this._updatedAt;
  set updatedAt(int updatedAt) => _$this._updatedAt = updatedAt;

  int _archivedAt;
  int get archivedAt => _$this._archivedAt;
  set archivedAt(int archivedAt) => _$this._archivedAt = archivedAt;

  bool _isDeleted;
  bool get isDeleted => _$this._isDeleted;
  set isDeleted(bool isDeleted) => _$this._isDeleted = isDeleted;

  String _createdUserId;
  String get createdUserId => _$this._createdUserId;
  set createdUserId(String createdUserId) =>
      _$this._createdUserId = createdUserId;

  NotesEntityBuilder();

  NotesEntityBuilder get _$this {
    if (_$v != null) {
      _noteId = _$v.noteId;
      _title = _$v.title;
      _content = _$v.content;
      _tags = _$v.tags?.toBuilder();
      _labelColor = _$v.labelColor;
      _isChanged = _$v.isChanged;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _archivedAt = _$v.archivedAt;
      _isDeleted = _$v.isDeleted;
      _createdUserId = _$v.createdUserId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotesEntity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NotesEntity;
  }

  @override
  void update(void Function(NotesEntityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotesEntity build() {
    _$NotesEntity _$result;
    try {
      _$result = _$v ??
          new _$NotesEntity._(
              noteId: noteId,
              title: title,
              content: content,
              tags: _tags?.build(),
              labelColor: labelColor,
              isChanged: isChanged,
              createdAt: createdAt,
              updatedAt: updatedAt,
              archivedAt: archivedAt,
              isDeleted: isDeleted,
              createdUserId: createdUserId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NotesEntity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
