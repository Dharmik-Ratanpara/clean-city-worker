import 'controller/profile_controller.dart';
import 'models/profile_model.dart';
import 'package:clean_city_worker/core/app_export.dart';
import 'package:clean_city_worker/widgets/app_bar/appbar_image.dart';
import 'package:clean_city_worker/widgets/app_bar/custom_app_bar.dart';
import 'package:clean_city_worker/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(32),
                leadingWidth: 41,
                leading: AppbarImage(
                    height: getVerticalSize(9),
                    width: getHorizontalSize(25),
                    svgPath: ImageConstant.imgShare,
                    margin: getMargin(left: 16, top: 12, bottom: 11)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(8),
                      width: getHorizontalSize(14),
                      svgPath: ImageConstant.imgSignal,
                      margin: getMargin(left: 16, top: 12, right: 12)),
                  AppbarImage(
                      height: getVerticalSize(9),
                      width: getHorizontalSize(12),
                      svgPath: ImageConstant.imgSignalGray900,
                      margin: getMargin(left: 8, top: 11, right: 12)),
                  AppbarImage(
                      height: getVerticalSize(9),
                      width: getHorizontalSize(20),
                      svgPath: ImageConstant.imgComputer,
                      margin: getMargin(left: 9, top: 11, right: 28))
                ],
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 11),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: double.maxFinite,
                              padding: getPadding(
                                  left: 16, top: 4, right: 16, bottom: 4),
                              decoration: AppDecoration.txtFillWhiteA700,
                              child: Text("lbl_my_profile".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold30)),
                          Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray100),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 12, top: 11),
                                  child: Row(children: [
                                    CustomIconButton(
                                        height: 72,
                                        width: 72,
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGroup1066)),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 26, bottom: 25),
                                        child: Text("lbl_91_98765_43210".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtUrbanistSemiBold16))
                                  ]))),
                          GestureDetector(
                              onTap: () {
                                onTapRowedit();
                              },
                              child: Container(
                                  margin:
                                      getMargin(left: 12, top: 32, right: 20),
                                  padding: getPadding(all: 16),
                                  decoration: AppDecoration.outlineGray100
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgEdit,
                                            height: getSize(20),
                                            width: getSize(20)),
                                        Padding(
                                            padding:
                                                getPadding(left: 8, top: 3),
                                            child: Text("lbl_change_number".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistMedium14)),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getSize(16),
                                            width: getSize(16),
                                            margin:
                                                getMargin(top: 2, bottom: 2))
                                      ]))),
                          Padding(
                              padding: getPadding(top: 16),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.gray300,
                                  indent: getHorizontalSize(12),
                                  endIndent: getHorizontalSize(20))),
                          Container(
                              margin: getMargin(left: 12, top: 15, right: 20),
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.outlineGray100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgInfo,
                                        height: getSize(20),
                                        width: getSize(20)),
                                    Padding(
                                        padding: getPadding(
                                            left: 8, top: 1, bottom: 1),
                                        child: Text("lbl_faqs".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtUrbanistMedium14)),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getSize(16),
                                        width: getSize(16),
                                        margin: getMargin(top: 2, bottom: 2))
                                  ])),
                          Container(
                              margin: getMargin(left: 12, top: 8, right: 20),
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.outlineGray100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgInfo,
                                        height: getSize(20),
                                        width: getSize(20)),
                                    Padding(
                                        padding: getPadding(
                                            left: 8, top: 1, bottom: 1),
                                        child: Text("msg_terms_condition".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtUrbanistMedium14)),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getSize(16),
                                        width: getSize(16),
                                        margin: getMargin(top: 2, bottom: 2))
                                  ])),
                          Container(
                              margin: getMargin(left: 12, top: 8, right: 20),
                              padding: getPadding(all: 16),
                              decoration: AppDecoration.outlineGray100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgInfo,
                                        height: getSize(20),
                                        width: getSize(20)),
                                    Padding(
                                        padding: getPadding(left: 8, top: 3),
                                        child: Text("lbl_privacy_policy".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtUrbanistMedium14)),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getSize(16),
                                        width: getSize(16),
                                        margin: getMargin(top: 2, bottom: 2))
                                  ])),
                          Padding(
                              padding: getPadding(top: 16),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.gray300,
                                  indent: getHorizontalSize(12),
                                  endIndent: getHorizontalSize(20))),
                          Container(
                              margin: getMargin(left: 12, top: 15, right: 20),
                              padding: getPadding(
                                  left: 16, top: 15, right: 16, bottom: 15),
                              decoration: AppDecoration.outlineGray100.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgClock,
                                        height: getSize(20),
                                        width: getSize(20)),
                                    Padding(
                                        padding: getPadding(left: 20, top: 3),
                                        child: Text("lbl_log_out".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtUrbanistMedium14)),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getSize(16),
                                        width: getSize(16),
                                        margin: getMargin(top: 2, bottom: 2))
                                  ])),
                          Container(
                              margin: getMargin(top: 262, right: 1),
                              padding: getPadding(
                                  left: 15, top: 10, right: 15, bottom: 10),
                              decoration: AppDecoration.outlineBlack9000a,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: Padding(
                                            padding: getPadding(right: 4),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgHome,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text("lbl_home".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtUrbanistRomanBold12Black900))
                                                ]))),
                                    Expanded(
                                        child: Padding(
                                            padding:
                                                getPadding(left: 4, right: 4),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgIconsaxoutlinemap1,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text("lbl_map".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtUrbanistRomanRegular10Gray700))
                                                ]))),
                                    Expanded(
                                        child: Padding(
                                            padding:
                                                getPadding(left: 4, right: 4),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgTimemachine,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text(
                                                          "lbl_history".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtUrbanistRomanRegular10Gray700))
                                                ]))),
                                    Expanded(
                                        child: Padding(
                                            padding: getPadding(left: 4),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgMenu,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text("lbl_more".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .txtUrbanistRomanRegular10Gray700))
                                                ])))
                                  ]))
                        ])))));
  }

  onTapRowedit() {
    Get.toNamed(
      AppRoutes.changeNumberScreen,
    );
  }
}
