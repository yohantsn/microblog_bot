// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProfileController on _ProfileController, Store {
  Computed<UserModel> _$userModelComputed;

  @override
  UserModel get userModel =>
      (_$userModelComputed ??= Computed<UserModel>(() => super.userModel,
              name: '_ProfileController.userModel'))
          .value;

  final _$snapshotPostsAtom = Atom(name: '_ProfileController.snapshotPosts');

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

  final _$isLoadingAtom = Atom(name: '_ProfileController.isLoading');

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

  final _$countPostsAtom = Atom(name: '_ProfileController.countPosts');

  @override
  int get countPosts {
    _$countPostsAtom.reportRead();
    return super.countPosts;
  }

  @override
  set countPosts(int value) {
    _$countPostsAtom.reportWrite(value, super.countPosts, () {
      super.countPosts = value;
    });
  }

  final _$_ProfileControllerActionController =
      ActionController(name: '_ProfileController');

  @override
  void editPost(DocumentSnapshot documentSnapshot) {
    final _$actionInfo = _$_ProfileControllerActionController.startAction(
        name: '_ProfileController.editPost');
    try {
      return super.editPost(documentSnapshot);
    } finally {
      _$_ProfileControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deletePost(DocumentSnapshot documentSnapshot) {
    final _$actionInfo = _$_ProfileControllerActionController.startAction(
        name: '_ProfileController.deletePost');
    try {
      return super.deletePost(documentSnapshot);
    } finally {
      _$_ProfileControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
snapshotPosts: ${snapshotPosts},
isLoading: ${isLoading},
countPosts: ${countPosts},
userModel: ${userModel}
    ''';
  }
}
