import 'dart:convert';

import 'package:micro_blog_bot/data/repositorie/api/news_interface.dart';
import 'package:micro_blog_bot/domain/models/new_model.dart';


class NewsMock implements INews{
  final String jsons;

  NewsMock({this.jsons});

  @override
  Future<List<NewModel>> getNews() async {
    final listNews = <NewModel>[];
    final map = await jsonDecode(jsons);
    if(map != null){
      for(final item in map["news"]){
        final newModel = NewModel.fromJson(item);
        listNews.add(newModel);
      }
    }
    return Future.value(listNews);
  }
}