// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({Key? key}) : super(key: key);
//   static const String routeName = 'dangky_screen';

//   @override
//   _SignupScreenState createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   final _formKey =
//       GlobalKey<FormState>(); //Để validate dữ liệu người dùng nhập vào
//   final _firebaseAuth = FirebaseAuth.instance; //Khởi tạo đối tượng FirebaseAuth

//   String _email = ''; //Lưu email người dùng nhập vào
//   String _password = ''; //Lưu password người dùng nhập vào

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextFormField(
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   hintText: 'Enter email',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(4.0),
//                   ),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter email';
//                   }
//                   return null;
//                 },
//                 onChanged: (value) {
//                   _email = value;
//                 },
//               ),
//               SizedBox(height: 20.0),
//               TextFormField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   hintText: 'Enter password',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(4.0),
//                   ),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter password';
//                   }
//                   return null;
//                 },
//                 onChanged: (value) {
//                   _password = value;
//                 },
//               ),
//               SizedBox(height: 20.0),
//               ElevatedButton(
//                 child: Text('Signup'),
//                 onPressed: () async {
//                   if (_formKey.currentState!.validate()) {
//                     try {
//                       final UserCredential userCredential =
//                           await _firebaseAuth.createUserWithEmailAndPassword(
//                         email: _email,
//                         password: _password,
//                       );
//                       // Đăng ký thành công
//                     } on FirebaseAuthException catch (e) {
//                       if (e.code == 'weak-password') {
//                         print('The password provided is too weak.');
//                       } else if (e.code == 'email-already-in-use') {
//                         print('The account already exists for that email.');
//                       }
//                     } catch (e) {
//                       print(e);
//                     }
//                   }
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
