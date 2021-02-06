import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:micro_blog_bot/data/repositorie/external/storage_interface.dart';
import 'package:micro_blog_bot/domain/models/user_model.dart';

class StorageMock implements IStorage{
  @override
  Future<void> saveUser({UserModel userModel}) {
    // TODO: implement saveUser
    throw UnimplementedError();
  }

  @override
  Future<UserModel> getUserModel({String uid}) {
    // TODO: implement getUserModel
    throw UnimplementedError();
  }

  @override
  Stream readPosts() {
    // TODO: implement readPosts
    throw UnimplementedError();
  }

  @override
  Future<void> publishPost({String uid, postModel}) {
    // TODO: implement publishPost
    throw UnimplementedError();
  }

  @override
  Future<void> deleteDocument({DocumentSnapshot documentSnapshot}) {
    // TODO: implement deleteDocument
    throw UnimplementedError();
  }


}