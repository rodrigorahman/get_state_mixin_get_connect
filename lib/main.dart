import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_state_mixin_get_connect/home/home_page_bindings.dart';

import 'home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
          binding: HomePageBindings(),
        )
      ],
    );
  }
}
