import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dismention_constants.dart';
import 'package:travel_app/data/MongoDB/config.dart';
import 'package:travel_app/representation/form/test.dart';
import 'package:travel_app/representation/screen/main_app.dart';
import 'package:travel_app/representation/screen/profile_screen.dart';
import 'package:travel_app/representation/screen/signin_screen.dart';
import 'package:travel_app/representation/screen/signup_screen.dart';
import 'package:travel_app/representation/widgets/button_widget.dart';
import 'package:http/http.dart' as http;

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
    this.token,
  }) : super(key: key);

  final token;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isObscure = true;

  late SharedPreferences prefs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSharedPref();
  }

  void initSharedPref() async {
    prefs = await SharedPreferences.getInstance();
  }

  void _toggleObscure() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  void _login() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      String email = emailController.text;
      String password = passwordController.text;

      if (email.isNotEmpty && password.isNotEmpty) {
        // TODO: Do login process here.
      } else {
        // _showAlert();
      }
    }
  }

  //  Hàm xử lý đăng nhập
  void handleLogin() {
    // Kiểm tra email và mật khẩu của người dùng
    if (emailController == emailController &&
        passwordController == passwordController &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      // Hiển thị dialog khi đăng nhập thành công
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            title: Text('Đăng nhập thành công'),
            content: Text('Chào mừng bạn đến với ứng dụng của chúng tôi'),
            actions: [
              ElevatedButton(
                child: Text('OK'),
                onPressed: () {
                  // Navigator.of(context).pop();
                  loginUser();
                },
              ),
            ],
          );
        },
      );
    } else {
      // Xử lý khi đăng nhập thất bại, ví dụ: hiển thị thông báo lỗi
      // ...
    }
  }

  check() async {
    var token;

    if (token != null && JwtDecoder.isExpired(token) == false) {
      MainApp();
    } else {
      SiginScreen();
    }
  }

  void loginUser() async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      var reqBody = {
        "email": emailController.text,
        "password": passwordController.text
      };

      var response = await http.post(Uri.parse(login),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(reqBody));

      var jsonResponse = jsonDecode(response.body);
      if (jsonResponse['status']) {
        var myToken = jsonResponse['token'];
        prefs.setString('token', myToken);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainApp()));
      } else {
        print('Something went wrong');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        //

        children: [
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              // filled: true,
              label: Text("Email"),

              prefixIcon: Icon(
                Icons.email,
                color: ColorsPalette.primaryColor,
              ),
              labelStyle: TextStyle(color: Colors.black),
              border: OutlineInputBorder(),
              iconColor: ColorsPalette.primaryColor,
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Vui lòng điền Email';
              }
              return null;
            },
          ),
          SizedBox(
            height: kMargin,
          ),
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
              label: Text("Password"),
              suffixIcon: IconButton(
                icon:
                    Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                onPressed: _toggleObscure,
              ),
              prefixIcon: Icon(
                FontAwesomeIcons.userLock,
                color: ColorsPalette.primaryColor,
              ),
              labelStyle: TextStyle(color: Colors.black),
              border: OutlineInputBorder(),
              iconColor: ColorsPalette.primaryColor,
              // suffixIcon: IconButton(
              //     onPressed: (null),
              //     icon: Icon(
              //       Icons.remove_red_eye_outlined,

              //     )
              //     ),
            ),
            obscureText: _isObscure,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Vui lòng điền mật khẩu';
              }
              return null;
            },
          ),
          // TextFormField(
          //   controller: passwordController,
          //   decoration: InputDecoration(
          //     labelText: 'Password',
          //     suffixIcon: IconButton(
          //       icon:
          //           Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
          //       onPressed: _toggleObscure,
          //     ),
          //   ),
          //   obscureText: _isObscure,
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       return 'Please enter password';
          //     }
          //     return null;
          //   },
          // ),
          SizedBox(
            height: kMargin,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: (() {}),
                child: Text(
                  "Forgot password",
                  style: TextStyle(),
                )),
          ),
          SizedBox(
            height: 70,
            width: double.infinity,
            child: ButtomWidget(
              title: "Đăng nhập",
              ontap: () {
                _login();
                // handleLogin();
                loginUser();
                var token;
                {
                  (token != null && JwtDecoder.isExpired(token) == false)
                      ? MainApp()
                      : SiginScreen();
                }
                ;
              },
            ),
          ),
          SizedBox(
            height: 25,
          ),
          // SizedBox(
          //   height: 70,
          //   width: double.infinity,
          //   child: ButtomWidget(
          //     title: "Đăng ký",
          //     ontap: () {
          //       Navigator.of(context).pushNamed(SignUpScreen.routeName);
          //     },
          //   ),
          // ),
          Column(
            children: [
              // const Text("hoặc"),
              // SizedBox(
              //   height: 60,
              //   width: double.infinity,
              //   child: OutlinedButton.icon(
              //       onPressed: (() {
              //         // Navigator.of(context).pushNamed(SignInDemo.routeName);
              //       }),
              //       icon: Icon(
              //         FontAwesomeIcons.google,
              //         color: Colors.black,
              //       ),
              //       label: const Text(
              //         "Đăng nhập với Google",
              //         style: TextStyle(color: Colors.black),
              //       )),
              // ),
              TextButton(
                  onPressed: (() {
                    Navigator.of(context).pushNamed(SignUpScreen.routeName);
                  }),
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "bạn chua co tai khoan?",
                        style: TextStyle(color: Colors.black)),
                    TextSpan(text: " Đăng Ký".toUpperCase())
                  ])))
            ],
          )
        ],
      ),
    );
  }
}
