// GENERATED CODE - DO NOT MODIFY BY HAND

part of app_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'posts',
      serializers.serialize(object.posts,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Post)])),
    ];
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(AppUser)));
    }
    if (object.info != null) {
      result
        ..add('info')
        ..add(serializers.serialize(object.info,
            specifiedType: const FullType(RegistrationInfo)));
    }
    if (object.savePostInfo != null) {
      result
        ..add('savePostInfo')
        ..add(serializers.serialize(object.savePostInfo,
            specifiedType: const FullType(SavePostInfo)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(AppUser)) as AppUser);
          break;
        case 'info':
          result.info.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RegistrationInfo))
              as RegistrationInfo);
          break;
        case 'posts':
          result.posts.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Post)]))
              as BuiltList<Object>);
          break;
        case 'savePostInfo':
          result.savePostInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(SavePostInfo)) as SavePostInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final AppUser user;
  @override
  final RegistrationInfo info;
  @override
  final BuiltList<Post> posts;
  @override
  final SavePostInfo savePostInfo;

  factory _$AppState([void Function(AppStateBuilder) updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.user, this.info, this.posts, this.savePostInfo})
      : super._() {
    if (posts == null) {
      throw new BuiltValueNullFieldError('AppState', 'posts');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        user == other.user &&
        info == other.info &&
        posts == other.posts &&
        savePostInfo == other.savePostInfo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, user.hashCode), info.hashCode), posts.hashCode),
        savePostInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('user', user)
          ..add('info', info)
          ..add('posts', posts)
          ..add('savePostInfo', savePostInfo))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  AppUserBuilder _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder user) => _$this._user = user;

  RegistrationInfoBuilder _info;
  RegistrationInfoBuilder get info =>
      _$this._info ??= new RegistrationInfoBuilder();
  set info(RegistrationInfoBuilder info) => _$this._info = info;

  ListBuilder<Post> _posts;
  ListBuilder<Post> get posts => _$this._posts ??= new ListBuilder<Post>();
  set posts(ListBuilder<Post> posts) => _$this._posts = posts;

  SavePostInfoBuilder _savePostInfo;
  SavePostInfoBuilder get savePostInfo =>
      _$this._savePostInfo ??= new SavePostInfoBuilder();
  set savePostInfo(SavePostInfoBuilder savePostInfo) =>
      _$this._savePostInfo = savePostInfo;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _info = _$v.info?.toBuilder();
      _posts = _$v.posts?.toBuilder();
      _savePostInfo = _$v.savePostInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              user: _user?.build(),
              info: _info?.build(),
              posts: posts.build(),
              savePostInfo: _savePostInfo?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'info';
        _info?.build();
        _$failedField = 'posts';
        posts.build();
        _$failedField = 'savePostInfo';
        _savePostInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
