import 'controller/profile_controller.dart';
import 'models/profile_model.dart';
import 'package:clean_city_worker/core/app_export.dart';
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
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 10),
                              child: Padding(
                                  padding: getPadding(right: 1),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: getHorizontalSize(356),
                                            padding: getPadding(
                                                left: 12,
                                                top: 4,
                                                right: 12,
                                                bottom: 4),
                                            decoration:
                                                AppDecoration.txtFillWhiteA700,
                                            child: Text("lbl_my_profile".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold30)),
                                        Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.gray100),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16, top: 19),
                                                child: Row(children: [
                                                  CustomIconButton(
                                                      height: 72,
                                                      width: 72,
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgGroup1066)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 26,
                                                          bottom: 25),
                                                      child: Text(
                                                          "lbl_91_98765_43210"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtUrbanistSemiBold16))
                                                ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapRowedit();
                                            },
                                            child: Container(
                                                margin: getMargin(
                                                    left: 16,
                                                    top: 32,
                                                    right: 15),
                                                padding: getPadding(all: 16),
                                                decoration: AppDecoration
                                                    .outlineGray100
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder8),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgEdit,
                                                          height: getSize(20),
                                                          width: getSize(20)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 8, top: 3),
                                                          child: Text(
                                                              "lbl_change_number"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtUrbanistMedium14)),
                                                      Spacer(),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowright,
                                                          height: getSize(16),
                                                          width: getSize(16),
                                                          margin: getMargin(
                                                              top: 2,
                                                              bottom: 2))
                                                    ]))),
                                        Padding(
                                            padding: getPadding(top: 16),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.gray300,
                                                indent: getHorizontalSize(16),
                                                endIndent:
                                                    getHorizontalSize(15))),
                                        Container(
                                            margin: getMargin(
                                                left: 16, top: 15, right: 15),
                                            padding: getPadding(all: 16),
                                            decoration: AppDecoration
                                                .outlineGray100
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgInfo,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 1,
                                                          bottom: 1),
                                                      child: Text("lbl_faqs".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtUrbanistMedium14)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getSize(16),
                                                      width: getSize(16),
                                                      margin: getMargin(
                                                          top: 2, bottom: 2))
                                                ])),
                                        Container(
                                            margin: getMargin(
                                                left: 16, top: 8, right: 15),
                                            padding: getPadding(all: 16),
                                            decoration: AppDecoration
                                                .outlineGray100
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgInfo,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 1,
                                                          bottom: 1),
                                                      child: Text(
                                                          "msg_terms_condition"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtUrbanistMedium14)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getSize(16),
                                                      width: getSize(16),
                                                      margin: getMargin(
                                                          top: 2, bottom: 2))
                                                ])),
                                        Container(
                                            margin: getMargin(
                                                left: 16, top: 8, right: 15),
                                            padding: getPadding(all: 16),
                                            decoration: AppDecoration
                                                .outlineGray100
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgInfo,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8, top: 3),
                                                      child: Text(
                                                          "lbl_privacy_policy"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtUrbanistMedium14)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getSize(16),
                                                      width: getSize(16),
                                                      margin: getMargin(
                                                          top: 2, bottom: 2))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 16),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.gray300,
                                                indent: getHorizontalSize(16),
                                                endIndent:
                                                    getHorizontalSize(15))),
                                        Container(
                                            margin: getMargin(
                                                left: 16, top: 15, right: 15),
                                            padding: getPadding(
                                                left: 16,
                                                top: 15,
                                                right: 16,
                                                bottom: 15),
                                            decoration: AppDecoration
                                                .outlineGray100
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgClock,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 20, top: 3),
                                                      child: Text(
                                                          "lbl_log_out".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtUrbanistMedium14)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getSize(16),
                                                      width: getSize(16),
                                                      margin: getMargin(
                                                          top: 2, bottom: 2))
                                                ])),
                                        Container(
                                            margin: getMargin(top: 287),
                                            padding: getPadding(
                                                left: 15,
                                                top: 10,
                                                right: 15,
                                                bottom: 10),
                                            decoration:
                                                AppDecoration.outlineBlack9000a,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                      child: Padding(
                                                          padding: getPadding(
                                                              right: 4),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgHome,
                                                                    height:
                                                                        getSize(
                                                                            20),
                                                                    width:
                                                                        getSize(
                                                                            20)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                4),
                                                                    child: Text(
                                                                        "lbl_home"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .txtUrbanistRomanBold12Black900))
                                                              ]))),
                                                  Expanded(
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 4,
                                                              right: 4),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgIconsaxoutlinemap1,
                                                                    height:
                                                                        getSize(
                                                                            20),
                                                                    width:
                                                                        getSize(
                                                                            20)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                4),
                                                                    child: Text(
                                                                        "lbl_map"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .txtUrbanistRomanRegular10Gray700))
                                                              ]))),
                                                  Expanded(
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 4,
                                                              right: 4),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgTimemachine,
                                                                    height:
                                                                        getSize(
                                                                            20),
                                                                    width:
                                                                        getSize(
                                                                            20)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                4),
                                                                    child: Text(
                                                                        "lbl_history"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .txtUrbanistRomanRegular10Gray700))
                                                              ]))),
                                                  Expanded(
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 4),
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgMenu,
                                                                    height:
                                                                        getSize(
                                                                            20),
                                                                    width:
                                                                        getSize(
                                                                            20)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                4),
                                                                    child: Text(
                                                                        "lbl_more"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .txtUrbanistRomanRegular10Gray700))
                                                              ])))
                                                ]))
                                      ]))))
                    ]))));
  }

  onTapRowedit() {
    Get.toNamed(
      AppRoutes.changeNumberScreen,
    );
  }
}
