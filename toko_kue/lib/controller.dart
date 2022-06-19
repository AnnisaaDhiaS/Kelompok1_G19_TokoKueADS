import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toko_kue/daftar_pesanan.dart';
import 'package:toko_kue/landing_page.dart';

class SSController extends GetxController {
  // Ini mirip initstate
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 5), () {
      // Get.off() == Navigator.pushReplacement()
      Get.off(Landing());
    });
  }

  final text1 = TextEditingController();
}
