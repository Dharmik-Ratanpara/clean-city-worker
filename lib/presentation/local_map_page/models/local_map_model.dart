import 'package:get/get.dart';
import 'local_map_item_model.dart';

class LocalMapModel {
  Rx<List<LocalMapItemModel>> localMapItemList =
      Rx(List.generate(3, (index) => LocalMapItemModel()));
}
