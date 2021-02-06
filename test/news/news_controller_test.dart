import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:micro_blog_bot/app/app_module.dart';
import 'package:micro_blog_bot/app/pages/home/home_module.dart';
import 'package:micro_blog_bot/app/pages/home/news/news_controller.dart';
import 'package:micro_blog_bot/data/repositorie/api/news_interface.dart';
import 'package:micro_blog_bot/data/repositorie/api/news_mock.dart';
import 'package:micro_blog_bot/domain/models/user_model.dart';
import 'package:micro_blog_bot/domain/usecases/base_content.dart';

import '../helper/utils.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  NewsController newsController;
  setUpAll(() async{
    final jsonNews = fixture("json_news.json");
    final newsMock = NewsMock(jsons: jsonNews);
    final user = UserModel(
        nameUser: "Yohan Sampaio",
        emailUser: "yohantsn@hotmail.com",
        uidUser: "kjfifjfififjfij");
    BaseContent baseContent = BaseContent();
    baseContent.setUserModel(user);
    initModules([AppModule(), HomeModule()],
        replaceBinds: [
          Bind.instance<INews>(newsMock),
        ]);
    newsController = NewsController();
  });



  test("Test get News ", ((){
    expect(newsController.listNews.length, 7);
  }));

}