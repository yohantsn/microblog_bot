import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:micro_blog_bot/data/repositorie/storage_interface.dart';
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

}