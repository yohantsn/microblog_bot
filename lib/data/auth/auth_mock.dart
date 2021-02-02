import 'package:micro_blog_bot/data/auth/auth_interface.dart';

class AuthMock implements IAuth{
  @override
  Future<Map> authCreateAccountEmail({String email, String password}) {
    // TODO: implement authCreateAccountEmail
    throw UnimplementedError();
  }

  @override
  Future<Map> authSignAccountEmail({String email, String password}) {
    // TODO: implement authSignAccountEmail
    throw UnimplementedError();
  }

  @override
  String getUid() {
    // TODO: implement getUid
    throw UnimplementedError();
  }

  @override
  bool isLogged() {
    // TODO: implement isLogged
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
  
}