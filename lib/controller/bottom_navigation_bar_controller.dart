import 'package:foodie/utils/exports.dart';

class BottomNavigationBarController extends GetxController {
  var selectedIndex = 0.obs;

  void onItemSelected(int index) {
    selectedIndex.value = index;
  }
}
