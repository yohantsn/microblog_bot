import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:micro_blog_bot/data/repositorie/external/storage_interface.dart';
import 'package:micro_blog_bot/domain/models/post_model.dart';
import 'package:micro_blog_bot/domain/models/user_model.dart';

class StorageFirebase implements IStorage{
  StorageFirebase(){
    fire = FirebaseFirestore.instance;
  }
  FirebaseFirestore fire;
  QuerySnapshot querySnapshot;

  @override
  Future<void> saveUser({UserModel userModel}) async{
    await this
        .fire
        .collection("users_data")
        .doc(userModel.uidUser)
        .collection("profile")
        .add(userModel.toJson());
  }

  @override
  Future<UserModel> getUserModel({String uid}) async {
    querySnapshot = await this
        .fire
        .collection("users_data")
        .doc(uid)
        .collection("profile")
        .get();

    QueryDocumentSnapshot queryDocumentSnapshot = querySnapshot.docs.first;
    UserModel userModel = UserModel.fromJson( queryDocumentSnapshot.data());
    return userModel;
  }

  @override
  Stream readPosts(){
    Stream collectionStream = FirebaseFirestore.instance.collection('post_data')
        .orderBy("datePost", descending: true).snapshots();
    return collectionStream;
  }

  @override
  Future<void> publishPost({String uid, PostModel postModel}) async{
    await this
        .fire
        .collection("post_data")
        .add(postModel.toJson());
  }

  @override
  Future<void> deleteDocument({DocumentSnapshot documentSnapshot}) async{
    await this.fire.collection("post_data").doc(documentSnapshot.id).delete();
  }

}