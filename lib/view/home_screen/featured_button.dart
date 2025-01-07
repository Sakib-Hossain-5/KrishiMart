import '../../consts/consts.dart';

Widget featuredButton({String? title, icon}) {
  return Row(
    children: [
      Image.asset(imgS1, width: 60, fit: BoxFit.fill),
      10.widthBox,
      cropSeeds.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.width(200).margin(const EdgeInsets.symmetric(horizontal: 4)).white.padding(const EdgeInsets.all(8)).make();
}
