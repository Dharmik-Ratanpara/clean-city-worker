import '../local_map_page/widgets/local_map_item_widget.dart';
import 'controller/local_map_controller.dart';
import 'models/local_map_item_model.dart';
import 'models/local_map_model.dart';
import 'package:clean_city_worker/core/app_export.dart';
import 'package:flutter/material.dart';

class LocalMapPage extends StatelessWidget {
  LocalMapController controller =
      Get.put(LocalMapController(LocalMapModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup121,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillWhiteA700.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup121,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          359,
                        ),
                        padding: getPadding(
                          left: 16,
                          top: 10,
                          right: 16,
                          bottom: 10,
                        ),
                        decoration: AppDecoration.txtFillWhiteA700,
                        child: Text(
                          "lbl_map".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold30,
                        ),
                      ),
                      Divider(
                        height: getVerticalSize(
                          1,
                        ),
                        thickness: getVerticalSize(
                          1,
                        ),
                        color: ColorConstant.gray100,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 21,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: ColorConstant.gray500,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: getPadding(
                            left: 79,
                            top: 132,
                            right: 40,
                          ),
                          child: Obx(
                            () => GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
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
                              itemCount: controller.localMapModelObj.value
                                  .localMapItemList.value.length,
                              itemBuilder: (context, index) {
                                LocalMapItemModel model = controller
                                    .localMapModelObj
                                    .value
                                    .localMapItemList
                                    .value[index];
                                return LocalMapItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          137,
                        ),
                        width: getHorizontalSize(
                          153,
                        ),
                        margin: getMargin(
                          left: 37,
                          top: 14,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: getSize(
                                  60,
                                ),
                                width: getSize(
                                  60,
                                ),
                                margin: getMargin(
                                  right: 41,
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
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
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
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: getSize(
                                  60,
                                ),
                                width: getSize(
                                  60,
                                ),
                                margin: getMargin(
                                  top: 30,
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
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Divider(
                        height: getVerticalSize(
                          1,
                        ),
                        thickness: getVerticalSize(
                          1,
                        ),
                        color: ColorConstant.gray500,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
