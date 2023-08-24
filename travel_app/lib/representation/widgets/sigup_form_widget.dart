// import 'dart:convert';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:travel_app/data/MongoDB/config.dart';
// import 'package:travel_app/representation/screen/signin_screen.dart';
// import 'package:travel_app/representation/widgets/button_widget.dart';

// import '../../core/constants/color_constants.dart';
// import '../../core/constants/dismention_constants.dart';
// import 'package:http/http.dart' as http;

// class SigUpFormWidget extends StatelessWidget {
//   const SigUpFormWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {

//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 20),
//       child: Form(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextFormField(

//               decoration: const InputDecoration(
//                 label: Text("Nhap ha va ten"),
//                 prefixIcon: Icon(
//                   Icons.person_outline_rounded,
//                   color: ColorsPalette.primaryColor,
//                 ),
//                 labelStyle: TextStyle(color: Colors.black),
//                 border: OutlineInputBorder(),
//                 iconColor: ColorsPalette.primaryColor,
//               ),
//             ),
//             SizedBox(
//               height: kMargin,
//             ),
//             TextFormField(

//               decoration: const InputDecoration(
//                 label: Text("Email"),
//                 prefixIcon: Icon(
//                   Icons.email,
//                   color: ColorsPalette.primaryColor,
//                 ),
//                 labelStyle: TextStyle(color: Colors.black),
//                 border: OutlineInputBorder(),
//                 iconColor: ColorsPalette.primaryColor,
//               ),
//             ),
//             SizedBox(
//               height: kMargin,
//             ),
//             TextFormField(
//               decoration: const InputDecoration(
//                 label: Text("So dien thoai"),
//                 prefixIcon: Icon(
//                   Icons.phone,
//                   color: ColorsPalette.primaryColor,
//                 ),
//                 labelStyle: TextStyle(color: Colors.black),
//                 border: OutlineInputBorder(),
//                 iconColor: ColorsPalette.primaryColor,
//               ),
//               keyboardType: TextInputType.number,
//               inputFormatters: <TextInputFormatter>[
//                 FilteringTextInputFormatter.digitsOnly
//               ],
//             ),
//             SizedBox(
//               height: kMargin,
//             ),
//             TextFormField(

//               decoration: const InputDecoration(
//                 label: Text("Mat Khau"),
//                 prefixIcon: Icon(
//                   Icons.password_outlined,
//                   color: ColorsPalette.primaryColor,
//                 ),
//                 labelStyle: TextStyle(color: Colors.black),
//                 border: OutlineInputBorder(),
//                 iconColor: ColorsPalette.primaryColor,
//               ),
//             ),
//             SizedBox(
//               height: kDefaultPadding,
//             ),
//             // SizedBox(
//             //   height: 60,
//             //   width: double.infinity,
//             //   child: ElevatedButton(

//             //     onPressed: (() {
//             //       Navigator.of(context).pushNamed(SiginScreen.routeName);
//             //     }),
//             //     child: Text(
//             //       "Đăng nhập",
//             //     ),
//             //     style: ElevatedButton.styleFrom(

//             //         backgroundColor: ColorsPalette.primaryColor),

//             //   ),

//             // )
//             SizedBox(
//               height: 70,
//               child: ButtomWidget(
//                 title: "Đăng ký",
//                 ontap: () =>{

//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/representation/screen/signin_screen.dart';
import 'package:travel_app/representation/widgets/button_widget.dart';
import 'package:http/http.dart' as http;

import '../../data/MongoDB/config.dart';

class SigUpFormWidget extends StatefulWidget {
  const SigUpFormWidget({super.key});

  @override
  State<SigUpFormWidget> createState() => _SigUpFormWidgetState();
}

class _SigUpFormWidgetState extends State<SigUpFormWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  bool _isNotValidate = false;

  void registerUser() async {
    if (emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        usernameController.text.isNotEmpty &&
        phoneController.text.isNotEmpty) {
      var regBody = {
        "email": emailController.text,
        "password": passwordController.text,
        "username": usernameController.text,
        "phone": phoneController.text
      };

      var response = await http.post(Uri.parse(registration),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(regBody));
      print(response);

      var jsonResponse = jsonDecode(response.body);

      print(jsonResponse['status']);

      // if(jsonResponse['status']){
      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInPage()));
      // }else{
      //   print("SomeThing Went Wrong");
      // }
    } else {
      setState(() {
        _isNotValidate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(
                label: Text("Nhap ha va ten"),
                prefixIcon: Icon(
                  Icons.person_outline_rounded,
                  color: ColorsPalette.primaryColor,
                ),
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
                iconColor: ColorsPalette.primaryColor,
              ),
            ),
            SizedBox(
              height: kMargin,
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                label: Text("Email"),
                prefixIcon: Icon(
                  Icons.email,
                  color: ColorsPalette.primaryColor,
                ),
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
                iconColor: ColorsPalette.primaryColor,
              ),
            ),
            SizedBox(
              height: kMargin,
            ),
            TextFormField(
              controller: phoneController,
              decoration: const InputDecoration(
                label: Text("So dien thoai"),
                prefixIcon: Icon(
                  Icons.phone,
                  color: ColorsPalette.primaryColor,
                ),
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
                iconColor: ColorsPalette.primaryColor,
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
            SizedBox(
              height: kMargin,
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                label: Text("Mat Khau"),
                prefixIcon: Icon(
                  Icons.password_outlined,
                  color: ColorsPalette.primaryColor,
                ),
                labelStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
                iconColor: ColorsPalette.primaryColor,
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            // SizedBox(
            //   height: 60,
            //   width: double.infinity,
            //   child: ElevatedButton(

            //     onPressed: (() {
            //       Navigator.of(context).pushNamed(SiginScreen.routeName);
            //     }),
            //     child: Text(
            //       "Đăng nhập",
            //     ),
            //     style: ElevatedButton.styleFrom(

            //         backgroundColor: ColorsPalette.primaryColor),

            //   ),

            // )
            SizedBox(
              height: 70,
              child: ButtomWidget(
                title: "Đăng ký",
                ontap: () => {
                  registerUser(),
                  Navigator.of(context).pushNamed(SiginScreen.routeName)
                },
              ),
            )
          ],
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
