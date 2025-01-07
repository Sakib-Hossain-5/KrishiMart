import 'package:krishimart/consts/consts.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
  return Container(
  color: Colors.white,
  child: "Cart is Empty!".text.fontFamily(semibold).color(darkFontGrey).makeCentered(),
  );
 }
}

