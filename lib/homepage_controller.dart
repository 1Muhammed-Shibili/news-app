import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Components/navigationBar.dart';
import 'package:news_app/Controller/BottomNavigationController.dart';

class HomePageController extends StatelessWidget {
  const HomePageController({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());

    return Scaffold(
        floatingActionButton: MyBottomNav(),
        body: Obx(
          () => controller.Pages[controller.index.value],
        ));
  }
}
