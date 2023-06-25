import 'controller/home_worker_container_controller.dart';
import 'models/home_worker_container_model.dart';
import 'package:clean_city_worker/core/app_export.dart';
import 'package:clean_city_worker/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class HomeWorkerContainerPage extends StatelessWidget {
  HomeWorkerContainerController controller =
      Get.put(HomeWorkerContainerController(HomeWorkerContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA700,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: getPadding(
                    top: 24,
                  ),
                  child: Padding(
                    padding: getPadding(
                      left: 16,
                      right: 16,
                      bottom: 5,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.searchController,
                          hintText: "lbl_search".tr,
                          variant: TextFormFieldVariant.OutlineGray900,
                          shape: TextFormFieldShape.CircleBorder24,
                          padding: TextFormFieldPadding.PaddingT15,
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistRegular14Gray900,
                          suffix: Container(
                            padding: getPadding(
                              all: 6,
                            ),
                            margin: getMargin(
                              left: 30,
                              top: 8,
                              right: 8,
                              bottom: 8,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.yellow400,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  16,
                                ),
                              ),
                            ),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgSearch,
                            ),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: getVerticalSize(
                              48,
                            ),
                          ),
                        ),
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(
                            top: 35,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                            style: AppStyle
                                                .txtUrbanistRomanBold12
                                                .copyWith(
                                              decoration:
                                                  TextDecoration.underline,
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
                            left: 8,
                            right: 10,
                          ),
                          padding: getPadding(
                            all: 7,
                          ),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL15,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 3,
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
                                  children: [
                                    Text(
                                      "lbl_99".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtUrbanistRomanRegular20,
                                    ),
                                    CustomImageView(
                                      svgPath:
                                          ImageConstant.imgIconsaxbulkdirectup,
                                      height: getSize(
                                        24,
                                      ),
                                      width: getSize(
                                        24,
                                      ),
                                      margin: getMargin(
                                        left: 6,
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant
                                          .imgIconsaxbulkdirectupGray500,
                                      height: getSize(
                                        24,
                                      ),
                                      width: getSize(
                                        24,
                                      ),
                                      margin: getMargin(
                                        left: 6,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 6,
                                      ),
                                      child: Text(
                                        "lbl_3".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtUrbanistRomanRegular20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                  right: 2,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomTextFormField(
                                      width: getHorizontalSize(
                                        190,
                                      ),
                                      focusNode: FocusNode(),
                                      controller:
                                          controller.markascompleteController,
                                      hintText: "msg_mark_as_complete".tr,
                                      margin: getMargin(
                                        bottom: 3,
                                      ),
                                      variant:
                                          TextFormFieldVariant.FillIndigo900,
                                      shape: TextFormFieldShape.RoundedBorder5,
                                      padding: TextFormFieldPadding.PaddingAll4,
                                      fontStyle: TextFormFieldFontStyle
                                          .UrbanistRomanBold15,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 16,
                                      ),
                                      child: Text(
                                        "msg_yesterday_5_59_pm".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtUrbanistRomanRegular10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            328,
                          ),
                          width: getHorizontalSize(
                            310,
                          ),
                          margin: getMargin(
                            top: 30,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  margin: getMargin(
                                    left: 105,
                                    top: 134,
                                  ),
                                  padding: getPadding(
                                    left: 12,
                                    right: 12,
                                  ),
                                  decoration:
                                      AppDecoration.fillIndigo900.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_done".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRomanBold20,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
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
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL15,
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          226,
                                        ),
                                        width: getHorizontalSize(
                                          310,
                                        ),
                                        decoration: AppDecoration
                                            .outlineBlack900
                                            .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL15,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgBiometrictechn,
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
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 2,
                                                        bottom: 193,
                                                      ),
                                                      child: Text(
                                                        "lbl_view_on_map".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtUrbanistRomanBold12
                                                            .copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                        ),
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgLocation,
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
                                                      svgPath:
                                                          ImageConstant.imgUser,
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
                                      padding: getPadding(
                                        all: 7,
                                      ),
                                      decoration: AppDecoration
                                          .outlineBlack9003f
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderBL15,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 3,
                                            ),
                                            child: Text(
                                              "msg_vgec_boys_hostel".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanRegular12,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 9,
                                            ),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "lbl_99".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistRomanRegular20,
                                                ),
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconsaxbulkdirectup,
                                                  height: getSize(
                                                    24,
                                                  ),
                                                  width: getSize(
                                                    24,
                                                  ),
                                                  margin: getMargin(
                                                    left: 6,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgIconsaxbulkdirectupGray500,
                                                  height: getSize(
                                                    24,
                                                  ),
                                                  width: getSize(
                                                    24,
                                                  ),
                                                  margin: getMargin(
                                                    left: 6,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 6,
                                                  ),
                                                  child: Text(
                                                    "lbl_3".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtUrbanistRomanRegular20,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 5,
                                              right: 3,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomTextFormField(
                                                  width: getHorizontalSize(
                                                    190,
                                                  ),
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .markascompleteController1,
                                                  hintText:
                                                      "msg_mark_as_complete".tr,
                                                  margin: getMargin(
                                                    bottom: 3,
                                                  ),
                                                  variant: TextFormFieldVariant
                                                      .FillIndigo900,
                                                  shape: TextFormFieldShape
                                                      .RoundedBorder5,
                                                  padding: TextFormFieldPadding
                                                      .PaddingAll4,
                                                  fontStyle:
                                                      TextFormFieldFontStyle
                                                          .UrbanistRomanBold15,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 16,
                                                  ),
                                                  child: Text(
                                                    "msg_yesterday_5_59_pm".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtUrbanistRomanRegular10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
            ],
          ),
        ),
      ),
    );
  }
}
