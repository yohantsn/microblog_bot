import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/data/repositorie/api/news_interface.dart';
import 'package:micro_blog_bot/domain/models/new_model.dart';
import 'package:mobx/mobx.dart';

part 'news_controller.g.dart';

class NewsController = _NewsController
    with _$NewsController;

abstract class _NewsController with Store{
  final INews news = Modular.get();
  _NewsController(){
    isLoading = true;
    news.getNews().then((value) {
      listNews = value;
      isLoading = false;
    });
  }

  @observable
  List<NewModel> listNews = <NewModel>[];

  @observable
  bool isLoading = false;


}