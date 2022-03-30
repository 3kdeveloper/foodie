import 'package:foodie/utils/exports.dart';

WaterDropNavBar buildWaterDropNavBar() {
  return WaterDropNavBar(
    bottomPadding: Get.height * 0.015,
    waterDropColor: AppColors.kPrimaryColor,
    selectedIndex:
        Get.find<BottomNavigationBarController>().selectedIndex.value,
    backgroundColor: Colors.white,
    onItemSelected: (index) {
      Get.find<BottomNavigationBarController>().onItemSelected(index);
    },
    barItems: [
      BarItem(
        filledIcon: Icons.home,
        outlinedIcon: Icons.home_outlined,
      ),
      BarItem(
          filledIcon: Icons.favorite_rounded,
          outlinedIcon: Icons.favorite_border_rounded),
    ],
  );
}
