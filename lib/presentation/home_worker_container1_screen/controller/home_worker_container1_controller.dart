import 'package:clean_city_worker/core/app_export.dart';
import 'package:clean_city_worker/presentation/home_worker_container1_screen/models/home_worker_container1_model.dart';
import 'package:clean_city_worker/widgets/custom_bottom_bar.dart';

class HomeWorkerContainer1Controller extends GetxController {
  Rx<HomeWorkerContainer1Model> homeWorkerContainer1ModelObj =
      HomeWorkerContainer1Model().obs;

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
