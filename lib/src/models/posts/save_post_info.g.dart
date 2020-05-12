// GENERATED CODE - DO NOT MODIFY BY HAND

part of save_post_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SavePostInfo> _$savePostInfoSerializer =
    new _$SavePostInfoSerializer();

class _$SavePostInfoSerializer implements StructuredSerializer<SavePostInfo> {
  @override
  final Iterable<Type> types = const [SavePostInfo, _$SavePostInfo];
  @override
  final String wireName = 'SavePostInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, SavePostInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.pictures != null) {
      result
        ..add('pictures')
        ..add(serializers.serialize(object.pictures,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  SavePostInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SavePostInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pictures':
          result.pictures.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$SavePostInfo extends SavePostInfo {
  @override
  final String description;
  @override
  final BuiltList<String> pictures;

  factory _$SavePostInfo([void Function(SavePostInfoBuilder) updates]) =>
      (new SavePostInfoBuilder()..update(updates)).build();

  _$SavePostInfo._({this.description, this.pictures}) : super._();

  @override
  SavePostInfo rebuild(void Function(SavePostInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SavePostInfoBuilder toBuilder() => new SavePostInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SavePostInfo &&
        description == other.description &&
        pictures == other.pictures;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, description.hashCode), pictures.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SavePostInfo')
          ..add('description', description)
          ..add('pictures', pictures))
        .toString();
  }
}

class SavePostInfoBuilder
    implements Builder<SavePostInfo, SavePostInfoBuilder> {
  _$SavePostInfo _$v;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ListBuilder<String> _pictures;
  ListBuilder<String> get pictures =>
      _$this._pictures ??= new ListBuilder<String>();
  set pictures(ListBuilder<String> pictures) => _$this._pictures = pictures;

  SavePostInfoBuilder();

  SavePostInfoBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _pictures = _$v.pictures?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SavePostInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SavePostInfo;
  }

  @override
  void update(void Function(SavePostInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SavePostInfo build() {
    _$SavePostInfo _$result;
    try {
      _$result = _$v ??
          new _$SavePostInfo._(
              description: description, pictures: _pictures?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pictures';
        _pictures?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SavePostInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
