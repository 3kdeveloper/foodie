import 'package:foodie/utils/constants/app_colors.dart';
import 'package:foodie/utils/exports.dart';
import 'package:foodie/widgets/build_button.dart';

class ProductDetail extends StatelessWidget {
  final int? id;
  final String? imagePath;
  final String? title;
  final String? description;
  final String? ingredients;
  final double? price;
  const ProductDetail({
    Key? key,
    this.id,
    this.imagePath,
    this.title,
    this.description,
    this.ingredients,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: Get.height * 0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.kPrimaryColor.withOpacity(0.3),
                  image: DecorationImage(image: AssetImage(imagePath!)),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ))),
          Padding(
            padding: kDefaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.height * 0.02),
                Text(title!, style: kTitleTextStyle),
                SizedBox(height: Get.height * 0.01),
                Text(ingredients!, style: kDescriptionTextStyle),
                SizedBox(height: Get.height * 0.02),
                Text(description!,
                    style: kDescriptionTextStyle.copyWith(fontSize: 14)),
                const Spacer(),
                buildButton(
                  buttonText: 'Add to Cart',
                  onPressed: () {},
                ),
                SizedBox(height: Get.height * 0.04),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
