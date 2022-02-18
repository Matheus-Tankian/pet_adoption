import 'package:get/get.dart';
import 'package:pet_adoption/controllers/controller.dart';

class ControllerBindings extends Bindings{
  @override
  void dependencies() {
    Get.put<Controller>(Controller());
  }

}