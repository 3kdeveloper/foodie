import 'package:flutter/gestures.dart';
import 'package:foodie/model/category_title_model.dart';
import 'package:foodie/utils/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.08),
              buildHomeHeader(),
              SizedBox(height: Get.height * 0.06),
              buildSearchField(),
              SizedBox(height: Get.height * 0.04),
              Padding(
                padding: kDefaultPadding,
                child: const Text('Categories', style: kDescriptionTextStyle),
              ),
              SizedBox(height: Get.height * 0.01),
              //TODO make all categories and then give horizontal scroll
              SizedBox(
                height: Get.height * 0.06,
                child: ListView.builder(
                    itemCount: categoryTileData.length,
                    scrollDirection: Axis.horizontal,
                    padding: kDefaultPadding,
                    itemBuilder: (context, index) {
                      return buildCategoryTile(
                        imagePath: categoryTileData[index].imagePath,
                        title: categoryTileData[index].title,
                      );
                    }),
              ),
              SizedBox(height: Get.height * 0.02),
              GridView.builder(
                itemCount: 6,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: kDefaultPadding,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                  return buildItemDisplayCard();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
