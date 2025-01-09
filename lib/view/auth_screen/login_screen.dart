import 'package:get/get.dart';
import 'package:krishimart/consts/consts.dart';
import 'package:krishimart/view/auth_screen/signup_screen.dart';
import 'package:krishimart/view/widget/applogo_widget.dart';
import 'package:krishimart/view/widget/custom_textfield.dart';
import 'package:krishimart/view/widget/ourButton.dart';
import '../../consts/list.dart';
import '../home_screen/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controllers for text fields
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Form Key for validation
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body:SafeArea(
        child:SingleChildScrollView(
        child: Center(
         child: Column(
            children: [
              30.heightBox,
              applogoWidget(),
              5.heightBox,
              "Log in to $appname"
                  .text
                  .fontFamily(bold)
                  .green900
                  .size(18)
                  .make(),
              5.heightBox,
              Card(
                color: Colors.white, // White background for the card
                elevation: 8.0, // Shadow effect to make it look like it's floating
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Form(
                        key: _formKey, // Adding form key for validation
                        child: Column(
                          children: [
                            customTextField(
                              title: email,
                              hint: emailHint,
                              controller: emailController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }
                                // Add additional email validation if necessary
                                return null;
                              },
                            ),
                            customTextField(
                              title: password,
                              hint: passwordHint,
                              controller: passwordController,
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null;
                              },
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  // Implement forgot password action
                                },
                                child: forgetPass.text.make(),
                              ),
                            ),
                            5.heightBox,
                            ourButton(
                              color: Colors.green[900]!,
                              title: login,
                              textColor: whiteColor,
                              onPress: () {
                                if (_formKey.currentState?.validate() ?? false) {
                                  // Handle login action
                                }
                              },
                            ).box.width(context.screenWidth - 50).make(),
                            5.heightBox,
                            createNewAccount.text.color(fontGrey).make(),
                            5.heightBox,
                            ourButton(
                              color: Colors.green[900]!,
                              title: signup,
                              textColor: greenColor,
                              onPress: () {
                                Get.to(() => const SignupScreen());
                                // Handle sign-up action
                              },
                            ).box.width(context.screenWidth - 50).make(),
                            10.heightBox,
                            loginWith.text.make(),
                            5.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                3,
                                    (index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    backgroundColor: lightGrey,
                                    radius: 25,
                                    child: Image.asset(
                                      socialIconList[index],
                                      width: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            5.heightBox,
                            const Text("Privacy policy"),
                            10.heightBox,
                            // Add Skip button here
                            ourButton(
                              color: Colors.blueGrey,
                              title: 'Skip',
                              textColor: whiteColor,
                              onPress: () {
                                Get.to(() => const Home());
                              },
                            ).box.width(context.screenWidth - 50).make(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 50).make(),
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}
