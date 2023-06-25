import '../controller/home_worker_container_controller.dart';
import 'package:get/get.dart';

class HomeWorkerContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeWorkerContainerController());
  }
}
