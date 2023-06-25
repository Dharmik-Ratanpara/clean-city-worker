import 'package:clean_city_worker/core/app_export.dart';
import 'package:clean_city_worker/presentation/home_worker_container_page/models/home_worker_container_model.dart';
import 'package:flutter/material.dart';

class HomeWorkerContainerController extends GetxController {
  HomeWorkerContainerController(this.homeWorkerContainerModelObj);

  TextEditingController searchController = TextEditingController();

  TextEditingController markascompleteController = TextEditingController();

  TextEditingController markascompleteController1 = TextEditingController();

  Rx<HomeWorkerContainerModel> homeWorkerContainerModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    markascompleteController.dispose();
    markascompleteController1.dispose();
  }
}
