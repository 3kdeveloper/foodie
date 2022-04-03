import 'package:foodie/utils/exports.dart';
import 'package:foodie/view/productDetail/product_detail_screen.dart';

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
                itemCount: productData.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: kDefaultPadding,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemBuilder: (context, index) {
                  return buildItemDisplayCard(
                      imagePath: productData[index].imagePath,
                      title: productData[index].title,
                      price: productData[index].price,
                      onTap: () {
                        Get.to(
                          () => ProductDetail(
                            id: productData[index].id,
                            imagePath: productData[index].imagePath,
                            title: productData[index].title,
                            description: productData[index].description,
                            ingredients: productData[index].ingredients,
                            price: productData[index].price,
                          ),
                        );
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
