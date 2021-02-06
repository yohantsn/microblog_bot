import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:micro_blog_bot/app/app_module.dart';
import 'package:micro_blog_bot/app/pages/home/home_module.dart';
import 'package:micro_blog_bot/app/pages/home/new_post/new_post_controller.dart';
import 'package:micro_blog_bot/data/repositorie/external/storage_interface.dart';
import 'package:micro_blog_bot/data/repositorie/external/storage_mock.dart';
import 'package:micro_blog_bot/domain/models/user_model.dart';
import 'package:micro_blog_bot/domain/usecases/base_content.dart';

import '../helper/utils.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  NewPostController newPostController;
  setUpAll(() async{
    final jsonUser = fixture("json_user.json");
    final jsonPost = fixture("json_posts.json");
    final storageMock = StorageMock(json: jsonEncode({"user" : jsonUser, "post":jsonPost}));
    final user = UserModel(
        nameUser: "Yohan Sampaio",
        emailUser: "yohantsn@hotmail.com",
        uidUser: "kjfifjfififjfij");
    BaseContent baseContent = BaseContent();
    baseContent.setUserModel(user);
    initModules([AppModule(), HomeModule()],
        replaceBinds: [
        Bind.instance<IStorage>(storageMock),
    ]);
    newPostController = NewPostController(null);
  });



  test("Test get ", ((){
    newPostController.onChangedPost("Olha so um teste.");
    expect(newPostController.counterLetters, 263);
    expect(newPostController.isEditted, true);
  }));

}