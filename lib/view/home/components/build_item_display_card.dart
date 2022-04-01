import 'package:foodie/utils/exports.dart';

Widget buildItemDisplayCard() {
  return Card(
    elevation: 5,
    shadowColor: AppColors.kPrimaryColor,
    child: SizedBox(
      height: Get.height * 0.3,
      child: Padding(
        padding: EdgeInsets.all(Get.height * 0.012),
        child: Column(
          children: [
            Image.asset(
              AssetPaths.kHamburger,
              height: Get.height * 0.1,
              fit: BoxFit.cover,
            ),
            const Spacer(),
            const Text('Hamburger', style: kDescriptionTextStyle),
            Text('200 gr chicken + cheese Lettuce + tomato',
                style: kDescriptionTextStyle.copyWith(
                  fontSize: 12,
                )),
            Row(
              children: [
                Text('\$ 22.00',
                    style: kDescriptionTextStyle.copyWith(
                      color: AppColors.kPrimaryColor,
                    )),
                const Spacer(),
                //TODO add to cart
                Container(
                  height: Get.height * 0.04,
                  width: Get.height * 0.04,
                  decoration: const BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.add, color: AppColors.kWhiteColor),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
