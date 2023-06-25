import 'controller/home_worker_container_controller.dart';
import 'package:clean_city_worker/core/app_export.dart';
import 'package:clean_city_worker/presentation/history_worker_page/history_worker_page.dart';
import 'package:clean_city_worker/presentation/home_worker_page/home_worker_page.dart';
import 'package:clean_city_worker/presentation/local_map_page/local_map_page.dart';
import 'package:clean_city_worker/presentation/profile_page/profile_page.dart';
import 'package:clean_city_worker/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeWorkerContainerScreen
    extends GetWidget<HomeWorkerContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homeWorkerPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeWorkerPage;
      case BottomBarEnum.Map:
        return AppRoutes.localMapPage;
      case BottomBarEnum.History:
        return AppRoutes.historyWorkerPage;
      case BottomBarEnum.More:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeWorkerPage:
        return HomeWorkerPage();
      case AppRoutes.localMapPage:
        return LocalMapPage();
      case AppRoutes.historyWorkerPage:
        return HistoryWorkerPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
