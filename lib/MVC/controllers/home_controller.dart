import 'package:flutter/material.dart';
import 'package:meme_maker/MVC/views/edit_meme.dart';
import 'package:meme_maker/MVC/views/home_page.dart';
import 'package:meme_maker/MVC/views/library%20_page.dart';

import '../views/edit_meme_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeController();
}

class HomeController extends State<HomeScreen> {
   TextEditingController captionController = TextEditingController();
  TextEditingController tagController = TextEditingController();
  // final formkey1 = GlobalKey<FormState>();
  // final formkey2 = GlobalKey<FormState>();

  void navigateToLibrary() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LibraryPage(this),
        ));
  }

  void navigateToEdit() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EditMemePage(this),
        ));
  }

  // bool rememberPassword = true;

  // setCheck(bool value) {
  //   setState(() {
  //     rememberPassword = value;
  //   });
  // }

  void toEditScreen() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => EditMeme(this),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return HomePage(this);
  }
}
