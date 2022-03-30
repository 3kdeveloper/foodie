import 'package:foodie/utils/exports.dart';

Widget buildSkipButton() {
  return Positioned(
    right: Get.width * 0.04,
    child: TextButton(
      onPressed: () => Get.offAll(() => MainScreen()),
      child: Obx(
        () => Text(
          Get.find<OnBoardingController>().isLastPage ? '' : 'SKIP',
          style: kDescriptionTextStyle.copyWith(
            color: AppColors.kPrimaryColor,
          ),
        ),
      ),
    ),
  );
}
