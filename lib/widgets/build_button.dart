import 'package:foodie/utils/exports.dart';

Widget buildButton({
  required String buttonText,
  required Function onPressed,
  Color buttonColor = AppColors.kPrimaryColor,
  double buttonWidth = 0.7,
}) {
  return InkWell(
      highlightColor: AppColors.kWhiteColor,
      onTap: onPressed(),
      child: Container(
        alignment: Alignment.center,
        height: Get.height * 0.08,
        width: Get.width * buttonWidth,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          buttonText,
          style: kTitleTextStyle.copyWith(
            color: AppColors.kWhiteColor,
          ),
        ),
      ));
}
