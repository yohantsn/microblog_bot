import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:micro_blog_bot/data/repositorie/external/storage_interface.dart';
import 'package:micro_blog_bot/domain/models/user_model.dart';

class StorageMock implements IStorage{
  final String json;

  StorageMock({this.json});

  @override
  Future<void> saveUser({UserModel userModel}) async{
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  Future<UserModel> getUserModel({String uid}) {
    final userModel = UserModel.fromJson(jsonDecode(json)["user"]);
    return Future.value(userModel);
  }

  @override
  Stream readPosts() {
    // TODO: implement readPosts
    throw UnimplementedError();
  }

  @override
  Future<void> publishPost({String uid, postModel}) async {
   await Future.delayed(Duration(seconds: 2));
  }

  @override
  Future<void> deleteDocument({DocumentSnapshot documentSnapshot}) async{
    await Future.delayed(Duration(seconds: 2));
  }


}