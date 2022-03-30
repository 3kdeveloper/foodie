import 'package:foodie/utils/exports.dart';

Widget buildNextButton() {
  return Positioned(
    right: Get.width * 0.04,
    bottom: 0.0,
    child: TextButton(
      onPressed: () => Get.find<OnBoardingController>().goToNextPage(),
      child: Obx(
        () => Text(
            Get.find<OnBoardingController>().isLastPage
                ? 'GET STARTED'
                : 'NEXT',
            style: kDescriptionTextStyle.copyWith(
              color: AppColors.kPrimaryColor,
            )),
      ),
    ),
  );
}
