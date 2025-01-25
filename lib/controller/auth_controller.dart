import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../view/auth_screen/login_screen.dart';
import '../view/home_screen/home.dart';

class AuthController extends GetxController {
  final supabase = Supabase.instance.client;
  final RxBool isLoading = false.obs;

  Future<void> signUp({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      isLoading.value = true;

      // Create user in Supabase Auth
      final response = await supabase.auth.signUp(
        email: email,
        password: password,
      );

      if (response.user != null) {
        // Store additional user data in profiles table
        await supabase.from('profiles').insert({
          'id': response.user!.id,
          'name': name,
          'email': email,
        });

        Get.snackbar('Success', 'Account created successfully');
        Get.to(() => const LoginScreen());
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      isLoading.value = true;

      final response = await supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );

      if (response.user != null) {
        Get.snackbar('Success', 'Logged in successfully');
        Get.offAll(() => const Home());
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> signOut() async {
    await supabase.auth.signOut();
    Get.offAll(() => const LoginScreen());
  }
}
