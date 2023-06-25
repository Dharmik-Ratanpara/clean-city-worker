import 'package:get/get.dart';
import 'gridlocation_item_model.dart';

class LocalMapItemModel {
  Rx<List<GridlocationItemModel>> gridlocationItemList =
      Rx(List.generate(3, (index) => GridlocationItemModel()));

  Rx<String>? id = Rx("");
}
