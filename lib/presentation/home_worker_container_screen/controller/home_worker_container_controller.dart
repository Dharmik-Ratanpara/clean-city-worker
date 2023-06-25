import 'package:clean_city_worker/core/app_export.dart';
import 'package:clean_city_worker/presentation/home_worker_container_screen/models/home_worker_container_model.dart';
import 'package:clean_city_worker/widgets/custom_bottom_bar.dart';

class HomeWorkerContainerController extends GetxController {
  Rx<HomeWorkerContainerModel> homeWorkerContainerModelObj =
      HomeWorkerContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
