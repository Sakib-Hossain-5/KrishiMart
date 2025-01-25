import 'package:get/get.dart';
import 'package:krishimart/consts/consts.dart';
import 'package:krishimart/view/widget/applogo_widget.dart';
import 'package:krishimart/view/widget/custom_textfield.dart';
import 'package:krishimart/view/widget/ourbutton.dart';
import '../../consts/list.dart';
import '../../controller/auth_controller.dart';
import '../home_screen/home.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // Controllers for text fields
  final AuthController authController = Get.put(AuthController());
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController retypePasswordController =
      TextEditingController();
  // Form Key for validation
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                applogoWidget(),
                const SizedBox(height: 10),
                Text(
                  "Log in to $appname",
                  style: TextStyle(
                    fontFamily: bold,
                    color: Colors.green[900],
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                Card(
                  color: Colors.white,
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              customTextField(
                                title: name,
                                hint: nameHint,
                                controller: nameController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your name';
                                  }
                                  return null;
                                },
                              ),
                              customTextField(
                                title: email,
                                hint: emailHint,
                                controller: emailController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  }
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
                              customTextField(
                                hint: passwordHint,
                                title: retypePassword,
                                controller: retypePasswordController,
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please retype your password';
                                  }
                                  if (value != passwordController.text) {
                                    return 'Passwords do not match';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 5),
                              ourButton(
                                color: Colors.green[900]!,
                                title: signup,
                                textColor: greenColor,
                                onPress: () {
                                  if (_formKey.currentState!.validate()) {
                                    authController.signUp(
                                      email: emailController.text,
                                      password: passwordController.text,
                                      name: nameController.text,
                                    );
                                  }
                                },
                              ).box.width(context.screenWidth - 50).make(),
                              const SizedBox(height: 10),
                              const Text(loginWith),
                              const SizedBox(height: 5),
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
                              const SizedBox(height: 5),
                              const Text("Privacy policy"),
                              const SizedBox(height: 10),
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
                  )
                      .box
                      .white
                      .rounded
                      .padding(const EdgeInsets.all(16))
                      .width(context.screenWidth - 50)
                      .make(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
