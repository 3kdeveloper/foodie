import 'package:foodie/utils/exports.dart';

Widget buildCategoryTile() {
  return Container(
    height: Get.height * 0.06,
    width: Get.height * 0.16,
    padding: EdgeInsets.symmetric(horizontal: Get.height * 0.015),
    margin: EdgeInsets.only(right: Get.width * 0.02),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: AppColors.kPrimaryColor.withOpacity(0.1),
      borderRadius: BorderRadius.circular(5),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AssetPaths.kHamburger,
          height: Get.height * 0.04,
        ),
        const Spacer(),
        Text(
          'Burger',
          style: kDescriptionTextStyle.copyWith(
              // color: AppColors.kWhiteColor,
              ),
        ),
      ],
    ),
  );
}
