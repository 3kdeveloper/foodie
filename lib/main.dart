import 'package:foodie/utils/exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Foodie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.kPrimaryColor,
        // ignore: deprecated_member_use
        accentColor: AppColors.kPrimaryColor,
        scaffoldBackgroundColor: AppColors.kWhiteColor,
      ),
      home: const SplashScreen(),
    );
  }
}
