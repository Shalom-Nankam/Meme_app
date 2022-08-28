import 'package:flutter/material.dart';

import '../MVC/controllers/onboard_controller.dart';
import '../MVC/views/stateless_view.dart';

class ShowPassword extends StatelessView<OnboardScreen, OnboardController> {
  const ShowPassword(OnboardController state, {Key? key})
      : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        
      },
      icon: Icon(Icons.add),
    );
  }
}
