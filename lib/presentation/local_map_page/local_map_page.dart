import '../local_map_page/widgets/local_map_item_widget.dart';
import 'controller/local_map_controller.dart';
import 'models/local_map_item_model.dart';
import 'models/local_map_model.dart';
import 'package:clean_city_worker/core/app_export.dart';
import 'package:clean_city_worker/widgets/app_bar/appbar_image.dart';
import 'package:clean_city_worker/widgets/app_bar/custom_app_bar.dart';
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
        appBar: CustomAppBar(
          height: getVerticalSize(
            32,
          ),
          leadingWidth: 41,
          leading: AppbarImage(
            height: getVerticalSize(
              9,
            ),
            width: getHorizontalSize(
              25,
            ),
            svgPath: ImageConstant.imgShare,
            margin: getMargin(
              left: 16,
              top: 12,
              bottom: 11,
            ),
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                8,
              ),
              width: getHorizontalSize(
                14,
              ),
              svgPath: ImageConstant.imgSignal,
              margin: getMargin(
                left: 16,
                top: 12,
                right: 12,
              ),
            ),
            AppbarImage(
              height: getVerticalSize(
                9,
              ),
              width: getHorizontalSize(
                12,
              ),
              svgPath: ImageConstant.imgSignalGray900,
              margin: getMargin(
                left: 8,
                top: 11,
                right: 12,
              ),
            ),
            AppbarImage(
              height: getVerticalSize(
                9,
              ),
              width: getHorizontalSize(
                20,
              ),
              svgPath: ImageConstant.imgComputer,
              margin: getMargin(
                left: 9,
                top: 11,
                right: 28,
              ),
            ),
          ],
          styleType: Style.bgFillWhiteA700,
        ),
        body: Container(
          width: size.width,
          height: size.height,
          padding: getPadding(
            top: 32,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup56,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  padding: getPadding(
                    left: 16,
                    top: 3,
                    right: 16,
                    bottom: 3,
                  ),
                  decoration: AppDecoration.txtFillWhiteA700,
                  child: Text(
                    "lbl_map".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBold30,
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    1,
                  ),
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.gray100,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: double.maxFinite,
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
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 37,
                    top: 132,
                    right: 40,
                  ),
                  child: Obx(
                    () => ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            14,
                          ),
                        );
                      },
                      itemCount: controller
                          .localMapModelObj.value.localMapItemList.value.length,
                      itemBuilder: (context, index) {
                        LocalMapItemModel model = controller.localMapModelObj
                            .value.localMapItemList.value[index];
                        return LocalMapItemWidget(
                          model,
                        );
                      },
                    ),
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
        ),
      ),
    );
  }
}
