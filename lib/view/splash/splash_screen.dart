import 'dart:async';

import 'package:foodie/utils/exports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _splashDuration() => Timer(
        const Duration(seconds: 5),
        () => Get.off(() => const OnBoardingScreen()),
      );

  @override
  void initState() {
    super.initState();
    _splashDuration();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AssetPaths.kLogo,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
