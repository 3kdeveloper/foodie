import 'package:foodie/utils/exports.dart';

Widget buildItemDisplayCard({
  int? id,
  String? imagePath,
  String? title,
  String? description,
  String? ingredients,
  double? price,
}) {
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
                  imagePath!,
                  height: 70,
                  fit: BoxFit.cover,
                ),
                const Spacer(),
                Text(title!, style: kDescriptionTextStyle),
                Row(
                  children: [
                    Text('\$ ${price!.toString()}',
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
