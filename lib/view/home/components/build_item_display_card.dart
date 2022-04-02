import 'package:foodie/utils/exports.dart';

Widget buildItemDisplayCard() {
  return LayoutBuilder(builder: (context, constraints) {
    return InkWell(
      onTap: () {},
      child: Card(
          elevation: 5,
          shadowColor: AppColors.kPrimaryColor,
          child: Padding(
            padding: EdgeInsets.all(constraints.maxHeight * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  AssetPaths.kHamburger,
                  height: 70,
                  fit: BoxFit.cover,
                ),
                const Spacer(),
                const Text('Hamburger', style: kDescriptionTextStyle),
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
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: AppColors.kPrimaryColor,
                        shape: BoxShape.circle,
                      ),
                      child:
                          const Icon(Icons.add, color: AppColors.kWhiteColor),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  });
}
