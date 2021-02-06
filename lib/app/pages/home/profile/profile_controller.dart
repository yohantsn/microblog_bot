import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:micro_blog_bot/data/auth/auth_interface.dart';
import 'package:micro_blog_bot/data/repositorie/external/storage_interface.dart';
import 'package:micro_blog_bot/domain/models/user_model.dart';
import 'package:micro_blog_bot/domain/usecases/base_content.dart';
import 'package:mobx/mobx.dart';

part 'profile_controller.g.dart';

class ProfileController = _ProfileController
    with _$ProfileController;

abstract class _ProfileController with Store{
  final BaseContent baseContent = Modular.get();
  final IStorage storage = Modular.get();
  final IAuth auth = Modular.get();
  _ProfileController(){
    isLoading = true;
    snapshotPosts = storage.readPosts();
  }

  @observable
  Stream snapshotPosts;

  @observable
  bool isLoading = false;

  @observable
  int countPosts = 0;

  @computed
  UserModel get userModel => baseContent.userModel;

  @action
  void editPost(DocumentSnapshot documentSnapshot){
    baseContent.setPostSnapshot(documentSnapshot);
  }

  @action
  void deletePost(DocumentSnapshot documentSnapshot){
    baseContent.setPostSnapshot(documentSnapshot);
    storage.deleteDocument(documentSnapshot: documentSnapshot);
  }

  @action
  Future<void> logout() async{
    await auth.signOut();
  }
}