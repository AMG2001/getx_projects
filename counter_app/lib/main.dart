import 'package:counter_app/application/config/pages_names.dart';
import 'package:counter_app/pages/page1.dart';
import 'package:counter_app/pages/page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(CounterApp());
}


class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: PagesNames.page1name, page: ()=>Page1()),
        GetPage(name: PagesNames.page2name, page: ()=>Page2()),
      ],
      initialRoute: PagesNames.page1name,
    );
  }
}
