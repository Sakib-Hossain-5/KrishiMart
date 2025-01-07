import 'package:krishimart/consts/consts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set scaffold background color to white
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Edit button
              const Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.edit),
              ),
              const SizedBox(height: 20), // Add space between elements
              // User's details
              Row(
                children: [
                  Image.asset(imgProfile2, width: 100, fit: BoxFit.cover)
                      .box.roundedFull.clip(Clip.antiAlias).make(),
                  SizedBox(width: 10), // Add space between image and details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Dummy user".text.fontFamily(semibold).make(),
                        "customer@example.com".text.make(),
                      ],
                    ),
                  ),
                  // Logout button
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.black)), // Change border color to match the new background
                    onPressed: () {},
                    child: "Logout".text.fontFamily(semibold).make(),
                  ),
                ],
              ),

              SizedBox(height: 30), // Add space between elements
              // Cards row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      "00".text.fontFamily(bold).color(darkFontGrey).size(16).make(),
                      5.heightBox,
                      "Wishlist".text.color(darkFontGrey).make(),
                    ],
                  ).box.white.rounded.width(context.screenWidth / 3.4).height(80).padding(EdgeInsets.all(4)).shadowSm.make(), // Add card shadow
                  // Orders
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      "00".text.fontFamily(bold).color(darkFontGrey).size(16).make(),
                      5.heightBox,
                      "Orders".text.color(darkFontGrey).make(),
                    ],
                  ).box.white.rounded.width(context.screenWidth / 3.4).height(80).padding(EdgeInsets.all(4)).shadowSm.make(), // Add card shadow
                  // In Your Cart
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      "00".text.fontFamily(bold).color(darkFontGrey).size(16).make(),
                      5.heightBox,
                      "In Your Cart".text.color(darkFontGrey).make(),
                    ],
                  ).box.white.rounded.width(context.screenWidth / 3.4).height(80).padding(EdgeInsets.all(4)).shadowSm.make(), // Add card shadow
                ],
              ),
              SizedBox(height: 20), // Add space between elements
              // Additional card with list
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Icon(Icons.shopping_bag, color: Colors.green),
                      title: Text('My Orders', style: TextStyle(color: darkFontGrey)),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.favorite, color: Colors.red),
                      title: Text('My Wishlist', style: TextStyle(color: darkFontGrey)),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.message, color: Colors.blue),
                      title: Text('Messages', style: TextStyle(color: darkFontGrey)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
