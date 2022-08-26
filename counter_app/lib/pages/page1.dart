import 'package:counter_app/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder(
              builder: (controller) =>
                  Text("value of Counter : ${counterController.counter}"),
            ),
            ElevatedButton(
                onPressed: () => counterController.increament(),
                child: Text("Increase Value"))
          ],
        ),
      ),
    );
  }
}
