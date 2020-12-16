import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_mixin_get_connect/home/components/grid_gifs.dart';
import 'package:get_state_mixin_get_connect/home/home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: controller.obx(
        (state) => GridGifs(state),
        onError: (error) => Center(
          child: Text(error),
        ),
      ),
    );
  }
}
