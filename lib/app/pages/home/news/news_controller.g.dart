// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NewsController on _NewsController, Store {
  final _$listNewsAtom = Atom(name: '_NewsController.listNews');

  @override
  List<NewModel> get listNews {
    _$listNewsAtom.reportRead();
    return super.listNews;
  }

  @override
  set listNews(List<NewModel> value) {
    _$listNewsAtom.reportWrite(value, super.listNews, () {
      super.listNews = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_NewsController.isLoading');

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
listNews: ${listNews},
isLoading: ${isLoading}
    ''';
  }
}
