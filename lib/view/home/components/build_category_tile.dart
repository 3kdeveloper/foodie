import 'package:foodie/utils/exports.dart';

Widget buildCategoryTile({
  String? imagePath,
  String? title,
}) {
  return InkWell(
    onTap: () {},
    child: Container(
      height: Get.height * 0.06,
      width: Get.height * 0.24,
      padding: EdgeInsets.symmetric(horizontal: Get.height * 0.015),
      margin: EdgeInsets.only(right: Get.width * 0.02),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.kPrimaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            imagePath!,
            height: Get.height * 0.04,
          ),
          SizedBox(width: Get.width * 0.02),
          Text(
            title!,
            style: kDescriptionTextStyle.copyWith(
                // color: AppColors.kWhiteColor,
                ),
          ),
        ],
      ),
    ),
  );
}
