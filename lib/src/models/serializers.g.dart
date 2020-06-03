// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(AppState.serializer)
      ..add(AppUser.serializer)
      ..add(AuthState.serializer)
      ..add(Chat.serializer)
      ..add(ChatsState.serializer)
      ..add(Comment.serializer)
      ..add(CommentsState.serializer)
      ..add(Like.serializer)
      ..add(LikeType.serializer)
      ..add(LikesState.serializer)
      ..add(Message.serializer)
      ..add(Post.serializer)
      ..add(PostsState.serializer)
      ..add(RegistrationInfo.serializer)
      ..add(SavePostInfo.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Comment)]),
          () => new ListBuilder<Comment>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(AppUser)]),
          () => new MapBuilder<String, AppUser>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AppUser)]),
          () => new ListBuilder<AppUser>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(BuiltList, const [const FullType(Like)])
          ]),
          () => new MapBuilder<String, BuiltList<Like>>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(BuiltList, const [const FullType(Like)])
          ]),
          () => new MapBuilder<String, BuiltList<Like>>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(Chat)]),
          () => new MapBuilder<String, Chat>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(Message)]),
          () => new MapBuilder<String, Message>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(Post)]),
          () => new MapBuilder<String, Post>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
