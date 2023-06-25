import 'package:clean_city_worker/core/app_export.dart';
import 'package:clean_city_worker/presentation/home_worker_page/models/home_worker_model.dart';
import 'package:flutter/material.dart';

class HomeWorkerController extends GetxController {
  HomeWorkerController(this.homeWorkerModelObj);

  TextEditingController searchController = TextEditingController();

  TextEditingController markascompleteController = TextEditingController();

  TextEditingController markascompleteController1 = TextEditingController();

  Rx<HomeWorkerModel> homeWorkerModelObj;

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
