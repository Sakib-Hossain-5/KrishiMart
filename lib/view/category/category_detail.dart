import 'package:get/get.dart';
import 'package:krishimart/consts/consts.dart';

import 'item_details.dart'; // Assuming this contains the necessary imports like text style, colors, etc.

class CategoryDetails extends StatelessWidget {
  final String? title;

  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).color(darkFontGrey).make(),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        color: Colors.green[50], // Light green background color
        child: Column(
          children: [
            // Horizontal Category Scroller
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  6,
                      (index) => "Manure"
                      .text
                      .size(12)
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .makeCentered()
                      .box
                      .white
                      .shadowSm
                      .rounded
                      .size(150, 60)
                      .margin(const EdgeInsets.symmetric(horizontal: 4))
                      .make(),
                ),
              ),
            ),
            20.heightBox,
            // Item Grid with floating effect
            Expanded(
              child: Stack(
                children: [
                  // Light green background
                  Positioned.fill(
                    child: Container(
                      color: Colors.green[50],
                    ),
                  ),
                  // GridView of floating items
                  Positioned.fill(
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 8,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisExtent: 250,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        return const ProductCard();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Assuming you have an asset image for this product
        Image.asset(
          imgFc3,
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),
        const Spacer(),
        "Poppy Seeds".text.fontFamily(semibold).color(darkFontGrey).make(),
        10.heightBox,
        "Tk 500".text.color(greenColor).fontFamily(bold).size(16).make(),
      ],
    )
        .box
        .white
        .margin(const EdgeInsets.symmetric(horizontal: 4))
        .outerShadowSm // Shadow effect to make it float
        .roundedSM
        .padding(const EdgeInsets.all(12))
        .make().onTap((){
          Get.to(()=>const ItemDetails(title: "Dummy Item"));
    });
  }
}


