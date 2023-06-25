import '../controller/local_map_controller.dart';
import '../models/gridlocation_item_model.dart';
import 'package:clean_city_worker/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridlocationItemWidget extends StatelessWidget {
  GridlocationItemWidget(this.gridlocationItemModelObj);

  GridlocationItemModel gridlocationItemModelObj;

  var controller = Get.find<LocalMapController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getSize(
        60,
      ),
      width: getSize(
        60,
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocation60x60,
            height: getSize(
              60,
            ),
            width: getSize(
              60,
            ),
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse7,
            height: getSize(
              40,
            ),
            width: getSize(
              40,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                20,
              ),
            ),
            alignment: Alignment.topCenter,
            margin: getMargin(
              top: 6,
            ),
          ),
        ],
      ),
    );
  }
}
