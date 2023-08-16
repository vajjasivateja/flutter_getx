import 'package:flutter/material.dart';
import 'package:flutter_getx/ListViewWidgetExampleWithGetX.dart';
import 'package:flutter_getx/OpacityExampleWithGetX.dart';
import 'package:flutter_getx/counter_example_with_getx.dart';
import 'package:flutter_getx/home_screen.dart';
import 'package:flutter_getx/second_screen.dart';
import 'package:flutter_getx/third_screen.dart';
import 'package:get/get.dart';

import 'ImagePickerUsingGetX.dart';
import 'SignUpWithRestUsingGetX.dart';
import 'SwitchWidgetExampleWithGetX.dart';
import 'languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SignUpWithRestUsingGetX(),
      getPages: [
        GetPage(name: "/", page: () => HomeScreen()),
        GetPage(name: "/second_screen", page: () => SecondScreen()),
        GetPage(name: "/third_screen", page: () => ThirdScreen()),
      ],
      locale: Locale("te", "IN"),
      fallbackLocale: Locale("en", "US"),
      translations: Languages(),
    );
  }
}
