import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/data/repositorie/external/storage_interface.dart';
import 'package:micro_blog_bot/domain/models/post_model.dart';
import 'package:micro_blog_bot/domain/models/user_model.dart';
import 'package:micro_blog_bot/domain/usecases/base_content.dart';
import 'package:mobx/mobx.dart';

part 'feed_controller.g.dart';

class FeedController = _FeedController
    with _$FeedController;

abstract class _FeedController with Store{
  final IStorage storage = Modular.get();
  final BaseContent baseContent = Modular.get();

  _FeedController(){
    isLoading = true;
    snapshotPosts = storage.readPosts();
  }

  @observable
  Stream snapshotPosts;

  @observable
  bool isLoading = false;

  @computed
  UserModel get userModel => baseContent.userModel;

}