import 'package:get/get.dart';

class CounterController extends GetxController {
  int counter = 0;
  void increament() {
    counter++;
    update();
  }
}
