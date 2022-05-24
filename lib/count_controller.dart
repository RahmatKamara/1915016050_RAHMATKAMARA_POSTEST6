import 'package:get/get.dart';

class CountController extends GetxController {
  int count1 = 0;
  int count2 = 0;
  int count3 = 0;
  int count4 = 0;

  void increment1() {
    count1++;
    update();
  }

  void decrase1() {
    count1--;
    update();
  }

  void increment2() {
    count2++;
    update();
  }

  void decrase2() {
    count2--;
    update();
  }

  void increment3() {
    count3++;
    update();
  }

  void decrase3() {
    count3--;
    update();
  }

  void increment4() {
    count4++;
    update();
  }

  void decrase4() {
    count4--;
    update();
  }
}
