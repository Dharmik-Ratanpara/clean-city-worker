import '../controller/home_worker_container1_controller.dart';
import 'package:get/get.dart';

class HomeWorkerContainer1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeWorkerContainer1Controller());
  }
}
