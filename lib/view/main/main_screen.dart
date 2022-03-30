import 'package:foodie/utils/exports.dart';
import 'package:foodie/view/home/home_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final _bottomNavigationBarController =
      Get.put(BottomNavigationBarController());
  final List _screens = const [
    HomeScreen(),
    FavoriteScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: _screens[_bottomNavigationBarController.selectedIndex.value],
        bottomNavigationBar: buildWaterDropNavBar(),
      ),
    );
  }
}
