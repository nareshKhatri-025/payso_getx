import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RoutesController extends GetxController {
  setPasscode(int passcode) {
    var box = GetStorage();
    box.writeIfNull('passcode', passcode);
  }
}