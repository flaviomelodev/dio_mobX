// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageControllerStore on _HomePageControllerStore, Store {
  late final _$postsAtom =
      Atom(name: '_HomePageControllerStore.posts', context: context);

  @override
  List<PostModel> get posts {
    _$postsAtom.reportRead();
    return super.posts;
  }

  @override
  set posts(List<PostModel> value) {
    _$postsAtom.reportWrite(value, super.posts, () {
      super.posts = value;
    });
  }

  late final _$fetchAllPostsAsyncAction =
      AsyncAction('_HomePageControllerStore.fetchAllPosts', context: context);

  @override
  Future<void> fetchAllPosts() {
    return _$fetchAllPostsAsyncAction.run(() => super.fetchAllPosts());
  }

  @override
  String toString() {
    return '''
posts: ${posts}
    ''';
  }
}
