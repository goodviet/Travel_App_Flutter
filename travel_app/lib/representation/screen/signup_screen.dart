// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:travel_app/core/constants/color_constants.dart';
// import 'package:travel_app/core/constants/dismention_constants.dart';
// import 'package:travel_app/core/helpers/asset_helper.dart';
// import 'package:travel_app/core/helpers/image_helper.dart';
// import 'package:travel_app/representation/widgets/form_header_widget.dart';
// import 'package:travel_app/representation/widgets/login_header_widget.dart';

// import '../widgets/sigup_form_widget.dart';

// class SignUpScreen extends StatelessWidget {
//   const SignUpScreen({super.key});
//   static final String routeName = '/sigup_screen';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           padding: const EdgeInsets.all(kMediumPadding),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const FormHeaderWidget(
//                 image: AssetHelper.acc_1,

//                 tltle: '',
//                 subTitle: "",
//               ),
//               const SigUpFormWidget(),
//               Column(
//                 children: [
//                   const Text("hoặc"),
//                   SizedBox(
//                     height: 60,
//                     width: double.infinity,
//                     child: OutlinedButton.icon(
//                         onPressed: (() {}),
//                         icon: Icon(
//                           Icons.face,
//                           color: Colors.black,
//                         ),
//                         label: const Text(
//                           "Đăng nhập với Google",
//                           style: TextStyle(color: Colors.black),
//                         )),
//                   ),
//                   TextButton(
//                       onPressed: (() {}),
//                       child: Text.rich(TextSpan(children: [
//                         TextSpan(
//                             text: "bạn chua co tai khoan?",
//                             style: TextStyle(color: Colors.black)),
//                         TextSpan(text: " Đăng nhập".toUpperCase())
//                       ])))
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/data/MongoDB/config.dart';
import 'package:travel_app/representation/widgets/form_header_widget.dart';
import 'package:travel_app/representation/widgets/sigup_form_widget.dart';
import 'package:http/http.dart' as http;

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static final String routeName = '/sigup_screen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isNotValidate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(kMediumPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FormHeaderWidget(
                image: AssetHelper.acc_1,
                tltle: '',
                subTitle: "",
              ),
              const SigUpFormWidget(),
              // Column(
              //   children: [
              //     const Text("hoặc"),
              //     SizedBox(
              //       height: 60,
              //       width: double.infinity,
              //       child: OutlinedButton.icon(
              //           onPressed: (() {}),
              //           icon: Icon(
              //             Icons.face,
              //             color: Colors.black,
              //           ),
              //           label: const Text(
              //             "Đăng nhập với Google",
              //             style: TextStyle(color: Colors.black),
              //           )),
              //     ),
              //     TextButton(
              //         onPressed: (() {}),
              //         child: Text.rich(TextSpan(children: [
              //           TextSpan(
              //               text: "bạn chua co tai khoan?",
              //               style: TextStyle(color: Colors.black)),
              //           TextSpan(text: " Đăng nhập".toUpperCase())
              //         ])))
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}

String generatePassword() {
  String upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  String lower = 'abcdefghijklmnopqrstuvwxyz';
  String numbers = '1234567890';
  String symbols = '!@#\$%^&*()<>,./';

  String password = '';

  int passLength = 20;

  String seed = upper + lower + numbers + symbols;

  List<String> list = seed.split('').toList();

  Random rand = Random();

  for (int i = 0; i < passLength; i++) {
    int index = rand.nextInt(list.length);
    password += list[index];
  }
  return password;
}
