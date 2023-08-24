import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/representation/screen/signup_screen.dart';

import '../../core/constants/color_constants.dart';
import '../form/login_form.dart';

class SiginScreen extends StatelessWidget {
  SiginScreen({super.key});
  static final String routeName = '/sigin_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(
                image: AssetImage(AssetHelper.acc_1),
                height: 200,
              ),
              Text("Dang nhap tai khoan",
                  style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Text("Hay thu trai nghiem nhung chien di",
                  style: TextStyle(fontSize: 16, color: Colors.black)),
              SizedBox(
                height: kDefaultPadding,
              ),
              // LoginForm(context)
              LoginForm()
            ],
          ),
        ),
      ),
    );
  }
}
