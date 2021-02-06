import 'dart:convert';

import 'package:micro_blog_bot/data/repositorie/api/news_interface.dart';
import 'package:micro_blog_bot/domain/models/new_model.dart';


class NewsMock implements INews{
  final String json;

  NewsMock({this.json});

  @override
  Future<List<NewModel>> getNews() {
    final listNews = <NewModel>[];
    if(json != null){
      for(final item in jsonDecode(json)){
        final newModel = NewModel.fromJson(item);
        listNews.add(newModel);
      }
    }
  }
}