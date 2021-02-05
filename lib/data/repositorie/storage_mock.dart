import 'package:micro_blog_bot/data/repositorie/storage_interface.dart';
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


}