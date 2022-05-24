import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckboxController extends GetxController {
  var isSedia = false.obs;

  onChanged(bool? value) {
    isSedia(value);
  }
}
