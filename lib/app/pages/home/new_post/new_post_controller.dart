import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/data/repositorie/external/storage_interface.dart';
import 'package:micro_blog_bot/domain/models/post_model.dart';
import 'package:micro_blog_bot/domain/usecases/base_content.dart';
import 'package:mobx/mobx.dart';

part 'new_post_controller.g.dart';

class NewPostController = _NewPostController
    with _$NewPostController;

abstract class _NewPostController with Store{
  final IStorage storage = Modular.get();
  final BaseContent baseContent = Modular.get();

  _NewPostController(this.postModel){
    if(postModel != null){
      postText = postModel.txtPost;
      counterLetters = maxLetters - postModel.txtPost.length;
    }
  }

  final maxLetters = 280;

  @observable
  PostModel postModel;

  @observable
  int counterLetters = 280;

  @observable
  String postText = "";

  @observable
  bool isEditted = false;

  @computed
  bool get isValid => postText.isNotEmpty;

  @action
  void onChangedPost(String value){
    postText = value;
    counterLetters = maxLetters - postText.length;
    isEditted = true;
  }

  @action
  void savePost(){
    if(postModel != null){
      storage.deleteDocument(documentSnapshot: baseContent.postSnapshot);
    }
    final _postModel = PostModel(txtPost: postText,
        datePost: DateTime.now(),
        userNamePost: baseContent.userModel.nameUser,
        uid: baseContent.userModel.uidUser
    );

    storage.publishPost(postModel: _postModel).then((value) => Modular.to.pop());
  }

}