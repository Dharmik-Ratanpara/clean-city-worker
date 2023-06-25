import '../controller/local_map_controller.dart';
import '../models/gridlocation_item_model.dart';
import '../models/local_map_item_model.dart';
import '../widgets/gridlocation_item_widget.dart';
import 'package:clean_city_worker/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LocalMapItemWidget extends StatelessWidget {
  LocalMapItemWidget(this.localMapItemModelObj);

  LocalMapItemModel localMapItemModelObj;

  var controller = Get.find<LocalMapController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: getVerticalSize(
            61,
          ),
          crossAxisCount: 2,
          mainAxisSpacing: getHorizontalSize(
            100,
          ),
          crossAxisSpacing: getHorizontalSize(
            100,
          ),
        ),
        physics: NeverScrollableScrollPhysics(),
      ),
      itemCount: localMapItemModelObj.gridlocationItemList.length,
      itemBuilder: (context, index) {
        GridlocationItemModel model =
            localMapItemModelObj.gridlocationItemList[index];
        return GridlocationItemWidget(
          model,
        );
      },
    );
  }
}
