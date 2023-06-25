import 'package:clean_city_worker/core/app_export.dart';
import 'package:clean_city_worker/presentation/local_map_page/models/local_map_model.dart';

class LocalMapController extends GetxController {
  LocalMapController(this.localMapModelObj);

  Rx<LocalMapModel> localMapModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
