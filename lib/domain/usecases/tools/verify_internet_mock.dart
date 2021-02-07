
import 'package:micro_blog_bot/domain/usecases/tools/verify_internet_interface.dart';

class VerifyInternetMock implements IVerifyInternet{
  @override
  Future<bool> isConnected() {
   return Future.value(true);
  }

}