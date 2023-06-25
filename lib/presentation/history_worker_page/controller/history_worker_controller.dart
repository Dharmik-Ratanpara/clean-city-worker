import 'package:clean_city_worker/core/app_export.dart';
import 'package:clean_city_worker/presentation/history_worker_page/models/history_worker_model.dart';

class HistoryWorkerController extends GetxController {
  HistoryWorkerController(this.historyWorkerModelObj);

  Rx<HistoryWorkerModel> historyWorkerModelObj;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    historyWorkerModelObj.value.dropdownItemList.value.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    historyWorkerModelObj.value.dropdownItemList.refresh();
  }
}
