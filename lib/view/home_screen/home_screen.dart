import 'package:krishimart/consts/consts.dart';
import 'package:krishimart/view/widget/homeButton.dart';
import '../../consts/list.dart';
import 'featured_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 60,
                color: lightGrey,
                child: TextFormField(
                  decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: whiteColor,
                    hintText: searchAnything,
                    hintStyle: TextStyle(color: textfieldGrey),
                  ),
                ),
              ),
              // SingleChildScrollView// Row
              10.heightBox,
              Column(
                children: [
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: slidersList.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        slidersList[index],
                        fit: BoxFit.fill,
                      ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                    },
                  ),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      2,
                          (index) => homeButtons(
                        height: context.screenHeight * 0.15,
                        width: context.screenWidth / 2.5,
                        icon: index == 0 ? icTodaysDeal : icFlashDeal,
                        title: index == 0 ? todaysDeal : flashSale,
                      ),
                    ),
                  ),
                  // 2nd slider
                  const SizedBox(height: 10),
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: slidersList.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        slidersList[index],
                        fit: BoxFit.fill,
                      ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                    },
                  ),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      3,
                          (index) => homeButtons(
                        height: context.screenHeight * 0.15,
                        width: context.screenWidth / 3.5,
                        icon: index == 0 ? icTopCategories : index == 1 ? icBrands : icTopSeller,
                        title: index == 0 ? topCategories : index == 1 ? brand : topSellers,
                      ),
                    ), // List.generate
                  ),
                  20.heightBox,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: featuredCategories.text.make(),
                  ),
                  20.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        3,
                            (index) => Column(
                          children: [
                            featuredButton(icon: featuredImages1[index], title: featuredTitles1[index]),
                            10.heightBox,
                            featuredButton(icon: featuredImages2[index], title: featuredTitles2[index]),
                          ],
                        ), // Column
                      ).toList(), // List.generate
                    ), // Row
                  ),

                  // featured products
                  20.heightBox,
                  Container(
                    padding: const EdgeInsets.all(12),
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Colors.green),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        featuredProduct.text.white.fontFamily(bold).size(18).make(),
                        10.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Added this line
                            children: List.generate(
                              6,
                                  (index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    imgP2,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  10.heightBox,
                                  "HONEY".text.fontFamily(semibold).color(darkFontGrey).make(),
                                  10.heightBox,
                                  "Tk 600".text.color(Colors.green).fontFamily(bold).size(16).make(),
                                ],
                              ).box.white.margin(const EdgeInsets.symmetric(horizontal:4)).roundedSM.padding(const EdgeInsets.all(8)).make(), // Fixed this line
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),
                  VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: slidersList.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        slidersList[index],
                        fit: BoxFit.fill,
                      ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                    },
                  ),

                  //all products
                  20.heightBox,
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 8, mainAxisSpacing: 8,mainAxisExtent: 300),
                    itemBuilder: (context, index) {
                      return
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP5,
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ), // Image.asset
                          const Spacer(),
                            "Poppy seed".text.fontFamily(semibold).color(darkFontGrey).make(),
                          5.heightBox,
                          "1 kg".text.fontFamily(semibold).color(darkFontGrey).make(),
                          5.heightBox,
                            "Tk 500".text.color(greenColor).fontFamily(bold).size(16).make(),
                          ],
                      ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(12)).make(); // Added this line
                   }
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
