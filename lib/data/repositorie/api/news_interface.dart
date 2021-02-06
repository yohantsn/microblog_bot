
import 'package:micro_blog_bot/domain/models/new_model.dart';

abstract class INews{
  Future<List<NewModel>> getNews();
}