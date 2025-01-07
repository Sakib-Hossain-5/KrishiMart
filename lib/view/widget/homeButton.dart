import 'package:krishimart/consts/consts.dart';

Widget homeButtons({width, height, icon, title, onPress}) {
  return Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon, width: 26),
      10.heightBox,
      Text(
        title!,
        style: const TextStyle(
          fontFamily: semibold,
          color: darkFontGrey,
        ),
      ),
    ],
  ).box.rounded.white.size(width, height).shadow.make();
}
