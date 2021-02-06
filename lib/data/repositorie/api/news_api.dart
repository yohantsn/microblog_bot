import 'dart:convert' as convert;
import 'package:dio/dio.dart';
import 'package:micro_blog_bot/data/constants/api_constants.dart';
import 'package:micro_blog_bot/data/repositorie/api/news_interface.dart';
import 'package:micro_blog_bot/domain/models/new_model.dart';
import 'package:http/http.dart' as http;


class NewsApi implements INews{

  Dio dio = Dio();

  @override
  Future<List<NewModel>> getNews() async{
    final listNews = <NewModel>[];
    try {
      final response = await dio.get(ApiConstants.url_newsLetter);
      if(response.statusCode == 200){
        if(response.data != null && response.data.isNotEmpty){
          for(final item in response.data["news"]){
            final newModel = NewModel.fromJson(item);
            listNews.add(newModel);
          }
        }
      }
    } catch (e) {
      print(e);
    }
    return listNews;
  }
}