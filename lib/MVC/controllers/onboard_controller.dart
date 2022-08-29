import 'package:flutter/material.dart';
import 'package:meme_maker/MVC/controllers/home_controller.dart';
import 'package:meme_maker/MVC/models/firebase_auth.dart';
import 'package:meme_maker/MVC/views/login_page.dart';

import '../views/onboard_view.dart';
import '../views/sign_up_page.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => OnboardController();
}

class OnboardController extends State<OnboardScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // final formkey1 = GlobalKey<FormState>();
  // final formkey2 = GlobalKey<FormState>();

  void navigateToSignUp() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignUp(this),
        ));
  }

  void navigateToLogin() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(this),
        ));
  }

  Future<Map<String, dynamic>> createNewUser(
          String newEmail, String newPassword) =>
      FirebaseAuthentication.createNewUser(newEmail, newPassword);



  // bool rememberPassword = true;

  // setCheck(bool value) {
  //   setState(() {
  //     rememberPassword = value;
  //   });
  // }

  void toHomeScreen() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return OnboardView(this);
  }
}
