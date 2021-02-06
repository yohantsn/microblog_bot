// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FeedController on _FeedController, Store {
  Computed<UserModel> _$userModelComputed;

  @override
  UserModel get userModel =>
      (_$userModelComputed ??= Computed<UserModel>(() => super.userModel,
              name: '_FeedController.userModel'))
          .value;

  final _$snapshotPostsAtom = Atom(name: '_FeedController.snapshotPosts');

  @override
  Stream<dynamic> get snapshotPosts {
    _$snapshotPostsAtom.reportRead();
    return super.snapshotPosts;
  }

  @override
  set snapshotPosts(Stream<dynamic> value) {
    _$snapshotPostsAtom.reportWrite(value, super.snapshotPosts, () {
      super.snapshotPosts = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_FeedController.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  @override
  String toString() {
    return '''
snapshotPosts: ${snapshotPosts},
isLoading: ${isLoading},
userModel: ${userModel}
    ''';
  }
}
