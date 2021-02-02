import 'package:flutter/foundation.dart';

abstract class IAuth{
  Future<Map> authCreateAccountEmail(
      {@required String email, @required String password});
  Future<Map> authSignAccountEmail(
      {@required String email, @required String password});
  Future<void> signOut();
  bool isLogged();
  String getUid();
}