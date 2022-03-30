import 'package:foodie/utils/exports.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  final _onBoardingController = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.symmetric(vertical: Get.height * 0.005),
        child: Stack(
          children: [
            PageView.builder(
                itemCount: _onBoardingController.onBoardingPages.length,
                onPageChanged: _onBoardingController.selectedPageIndex,
                controller: _onBoardingController.pageController,
                itemBuilder: (context, index) {
                  return buildOnBoardingBody(
                    index: index,
                    imagePath:
                        _onBoardingController.onBoardingPages[index].imagePath,
                    title: _onBoardingController.onBoardingPages[index].title,
                    description: _onBoardingController
                        .onBoardingPages[index].description,
                  );
                }),

            /// Skip Button
            buildSkipButton(),

            /// Next Button
            buildNextButton(),

            /// Dot Indicator
            buildAnimatedDotIndicator(),
          ],
        ),
      )),
    );
  }
}
