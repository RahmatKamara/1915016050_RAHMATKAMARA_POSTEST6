import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextController extends GetxController {
  var namaDepan = ''.obs;
  var namaBelakang = ''.obs;
  var asalInstansi = ''.obs;

  final namaDepanCtrl = TextEditingController();
  final namaBelakangCtrl = TextEditingController();
  final asalInstansiCtrl = TextEditingController();

  @override
  void onClose() {
    namaDepanCtrl.dispose();
    namaBelakangCtrl.dispose();
    asalInstansiCtrl.dispose();
    super.onClose();
  }

  onPressed() {
    namaDepan = namaDepanCtrl.text.obs;
    namaBelakang = namaBelakangCtrl.text.obs;
    asalInstansi = asalInstansiCtrl.text.obs;
    namaDepanCtrl.clear();
    namaBelakangCtrl.clear();
    asalInstansiCtrl.clear();
  }
}
