import 'package:get/get.dart';

class ContactFormController extends GetxController {
  bool autovalidte = false;
  void validateForm() {
    autovalidte = true;
    update();
  }
}
