import 'package:foodie/utils/exports.dart';

Widget buildHomeHeader() {
  return Padding(
    padding: kDefaultPadding,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Order Your Food \nFast and Free',
          style: kTitleTextStyle,
        ),
        const Spacer(),
        SvgPicture.asset(AssetPaths.kDelivery),
      ],
    ),
  );
}
