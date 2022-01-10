import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkController extends GetxController {
  var connectionStatus = 0.obs;
  late StreamSubscription<InternetConnectionStatus> _listener;
  RxBool isConnect = true.obs;

  @override
  void onInit() {
    super.onInit();
    _listener = InternetConnectionChecker()
        .onStatusChange
        .listen((InternetConnectionStatus status) {
      switch (status) {
        case InternetConnectionStatus.connected:
          connectionStatus.value = 1;
          printInfo(info: "connect");

          Get.snackbar(
            "Онлайн помічник", // title
            "Є з'єдання з інтернетом! Всі функції додатку працюють!", // message
            icon: Icon(Icons.alarm),
            shouldIconPulse: true,
            colorText: HexColor('#005BAA'),
            backgroundColor: Colors.amberAccent,
            barBlur: 20,
            isDismissible: true,
            duration: Duration(seconds: 3),
          );
          break;
        case InternetConnectionStatus.disconnected:
          printInfo(info: "disconnect");
          connectionStatus.value = 0;
          Get.snackbar(
            "Онлайн помічник", // title
            "Відсутнє з'єднання з інтернетом! Функціонал частково обмежений!", // message
            icon: Icon(Icons.alarm),
            shouldIconPulse: true,
            colorText: HexColor('#ffffff'),
            backgroundColor: Colors.pink,
            barBlur: 20,

            isDismissible: true,
            duration: Duration(seconds: 4),
          );
          break;
      }
    });
  }

  @override
  void onClose() {
    _listener.cancel();
  }
}
