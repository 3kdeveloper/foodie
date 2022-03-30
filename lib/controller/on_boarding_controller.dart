import 'package:foodie/utils/exports.dart';

class OnBoardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  var pageController = PageController();

  bool get isLastPage => selectedPageIndex.value == onBoardingPages.length - 1;

  void goToNextPage() {
    if (!isLastPage) {
      pageController.nextPage(
        duration: const Duration(microseconds: 300),
        curve: Curves.ease,
      );
    } else {
      Get.offAll(() => MainScreen());
    }
  }

  List<OnBoardingModel> onBoardingPages = [
    OnBoardingModel(
      imagePath: AssetPaths.kOnBoarding1,
      title: 'Hamburger',
      description:
          'The McDonald\'s hamburger is a 100% beef patty with no cheese! Head to McDonald\'s to enjoy a perfectly seasoned classic burger!',
    ),
    OnBoardingModel(
      imagePath: AssetPaths.kOnBoarding2,
      title: 'Fresh Food',
      description:
          'Fresh food is food which has not been preserved and has not spoiled yet.',
    ),
    OnBoardingModel(
      imagePath: AssetPaths.kOnBoarding3,
      title: 'Best Cooking Staff',
      description:
          'Chefs are in high demand all over the world. They oversee food production at places where food is served.',
    ),
  ];
}
