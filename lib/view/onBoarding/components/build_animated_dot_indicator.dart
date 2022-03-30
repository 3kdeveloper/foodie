import 'package:foodie/utils/exports.dart';

Widget buildAnimatedDotIndicator() {
  return Positioned(
    left: Get.width * 0.04,
    bottom: Get.height * 0.03,
    child: Obx(
      () => SizedBox(
        height: Get.height * 0.001,
        width: Get.height * 0.001,
        child: AnimatedSmoothIndicator(
          activeIndex: Get.find<OnBoardingController>().selectedPageIndex.value,
          count: Get.find<OnBoardingController>().onBoardingPages.length,
          effect: const JumpingDotEffect(
            dotHeight: 12,
            dotWidth: 12,
            activeDotColor: AppColors.kPrimaryColor,
          ),
        ),
      ),
    ),
  );
}
