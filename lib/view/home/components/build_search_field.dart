import 'package:foodie/utils/exports.dart';

Widget buildSearchField() {
  return Padding(
    padding: kDefaultPadding,
    child: Row(
      children: [
        Expanded(
          child: TextField(
            cursorColor: AppColors.kPrimaryColor,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.symmetric(
                vertical: Get.height * 0.02,
                horizontal: Get.width * 0.04,
              ),
              hintText: 'Search best foodie',
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.kPrimaryColor,
                  width: 1.0,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.kPrimaryColor,
                  width: 1.0,
                ),
              ),
              filled: true,
              fillColor: AppColors.kPrimaryColor.withOpacity(0.08),
            ),
          ),
        ),
        SizedBox(width: Get.width * 0.02),
        InkWell(
          onTap: () {},
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Container(
            height: Get.height * 0.07,
            width: Get.height * 0.07,
            decoration: BoxDecoration(
              color: AppColors.kPrimaryColor.withOpacity(0.08),
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Icon(
              Icons.filter_alt_outlined,
              color: AppColors.kPrimaryColor,
            ),
          ),
        )
      ],
    ),
  );
}
