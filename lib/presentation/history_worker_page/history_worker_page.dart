import 'controller/history_worker_controller.dart';
import 'models/history_worker_model.dart';
import 'package:clean_city_worker/core/app_export.dart';
import 'package:clean_city_worker/widgets/app_bar/appbar_image.dart';
import 'package:clean_city_worker/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HistoryWorkerPage extends StatelessWidget {
  HistoryWorkerController controller =
      Get.put(HistoryWorkerController(HistoryWorkerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 11,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
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
                      "lbl_my_history".tr,
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
                  Container(
                    width: double.maxFinite,
                    padding: getPadding(
                      left: 16,
                      top: 9,
                      right: 16,
                      bottom: 9,
                    ),
                    decoration: AppDecoration.fillWhiteA700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 4,
                          ),
                          child: Text(
                            "lbl_completed".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold23,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowdown,
                          height: getSize(
                            24,
                          ),
                          width: getSize(
                            24,
                          ),
                          margin: getMargin(
                            top: 4,
                            right: 7,
                            bottom: 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    color: ColorConstant.blueGray100,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: ColorConstant.black900,
                        width: getHorizontalSize(
                          1,
                        ),
                      ),
                      borderRadius: BorderRadiusStyle.customBorderTL15,
                    ),
                    child: Container(
                      height: getVerticalSize(
                        226,
                      ),
                      width: getHorizontalSize(
                        310,
                      ),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL15,
                      ),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgBiometrictechn,
                            height: getVerticalSize(
                              226,
                            ),
                            width: getHorizontalSize(
                              310,
                            ),
                            radius: BorderRadius.only(
                              topLeft: Radius.circular(
                                getHorizontalSize(
                                  15,
                                ),
                              ),
                              topRight: Radius.circular(
                                getHorizontalSize(
                                  15,
                                ),
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 11,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 2,
                                      bottom: 193,
                                    ),
                                    child: Text(
                                      "lbl_view_on_map".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanBold12
                                          .copyWith(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgLocation,
                                    height: getVerticalSize(
                                      16,
                                    ),
                                    width: getHorizontalSize(
                                      18,
                                    ),
                                    margin: getMargin(
                                      bottom: 194,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgUser,
                                    height: getVerticalSize(
                                      6,
                                    ),
                                    width: getHorizontalSize(
                                      40,
                                    ),
                                    margin: getMargin(
                                      left: 33,
                                      top: 205,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 24,
                      right: 26,
                    ),
                    padding: getPadding(
                      left: 7,
                      top: 5,
                      right: 7,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.outlineBlack9003f.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL15,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 5,
                          ),
                          child: Text(
                            "msg_vgec_boys_hostel".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanRegular12,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 10,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 4,
                                ),
                                child: Text(
                                  "lbl_98".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanRegular20,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgIconsaxbulkdirectup,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                                margin: getMargin(
                                  left: 6,
                                  bottom: 5,
                                ),
                              ),
                              CustomImageView(
                                svgPath:
                                    ImageConstant.imgIconsaxbulkdirectupGray500,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                                margin: getMargin(
                                  left: 6,
                                  bottom: 5,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 6,
                                  bottom: 4,
                                ),
                                child: Text(
                                  "lbl_4".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanRegular20,
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: getPadding(
                                  top: 16,
                                ),
                                child: Text(
                                  "msg_yesterday_5_59_pm".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanRegular10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 4,
                          ),
                          child: Text(
                            "msg_completed_09_24".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: getMargin(
                      top: 20,
                    ),
                    color: ColorConstant.blueGray100,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: ColorConstant.black900,
                        width: getHorizontalSize(
                          1,
                        ),
                      ),
                      borderRadius: BorderRadiusStyle.customBorderTL15,
                    ),
                    child: Container(
                      height: getVerticalSize(
                        226,
                      ),
                      width: getHorizontalSize(
                        310,
                      ),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL15,
                      ),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgBiometrictechn,
                            height: getVerticalSize(
                              226,
                            ),
                            width: getHorizontalSize(
                              310,
                            ),
                            radius: BorderRadius.only(
                              topLeft: Radius.circular(
                                getHorizontalSize(
                                  15,
                                ),
                              ),
                              topRight: Radius.circular(
                                getHorizontalSize(
                                  15,
                                ),
                              ),
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 11,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 2,
                                      bottom: 193,
                                    ),
                                    child: Text(
                                      "lbl_view_on_map".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanBold12
                                          .copyWith(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgLocation,
                                    height: getVerticalSize(
                                      16,
                                    ),
                                    width: getHorizontalSize(
                                      18,
                                    ),
                                    margin: getMargin(
                                      bottom: 194,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgUser,
                                    height: getVerticalSize(
                                      6,
                                    ),
                                    width: getHorizontalSize(
                                      40,
                                    ),
                                    margin: getMargin(
                                      left: 33,
                                      top: 205,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 24,
                      right: 26,
                    ),
                    padding: getPadding(
                      left: 7,
                      top: 5,
                      right: 7,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.outlineBlack9003f.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL15,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 5,
                          ),
                          child: Text(
                            "msg_vgec_boys_hostel".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanRegular12,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  bottom: 4,
                                ),
                                child: Text(
                                  "lbl_99".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanRegular20,
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgIconsaxbulkdirectup,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                                margin: getMargin(
                                  left: 6,
                                  bottom: 5,
                                ),
                              ),
                              CustomImageView(
                                svgPath:
                                    ImageConstant.imgIconsaxbulkdirectupGray500,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                                margin: getMargin(
                                  left: 6,
                                  bottom: 5,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 6,
                                  bottom: 4,
                                ),
                                child: Text(
                                  "lbl_3".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanRegular20,
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: getPadding(
                                  top: 16,
                                ),
                                child: Text(
                                  "msg_yesterday_5_59_pm".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanRegular10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 4,
                          ),
                          child: Text(
                            "msg_completed_09_24".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
