import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:micro_blog_bot/domain/models/post_model.dart';
import 'package:micro_blog_bot/domain/models/user_model.dart';

abstract class IStorage{
  Future<void> saveUser({UserModel userModel});
  Future<UserModel> getUserModel({String uid});
  Stream readPosts();
  Future<void> publishPost({String uid, PostModel postModel});
  Future<void> deleteDocument({DocumentSnapshot documentSnapshot});
}