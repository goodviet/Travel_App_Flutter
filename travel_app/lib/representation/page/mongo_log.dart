// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// import 'package:mongo_dart/mongo_dart.dart' as mongo;

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({super.key});
//   static const String routeName = '/mongo_log';

//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   final _formKey =
//       GlobalKey<FormState>(); //Để validate dữ liệu người dùng nhập vào

//   final _myMongoDb = MyMongoDb(); //Khởi tạo đối tượng MyMongoDb

//   String _email = ''; //Lưu email người dùng nhập vào
//   String _password = ''; //Lưu password người dùng nhập vào
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Signup'),
//       ),
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
//                       await _myMongoDb.signup(_email, _password);
//                       // Đăng ký thành công
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

// class MyMongoDb {
//   final String _username = 'phanminh'; // Thay username của bạn vào đây
//   final String _password = 'phanminhdat11'; // Thay password của bạn vào đây
//   final String _dbName = 'flutter'; // Tên database bạn muốn sử dụng
//   final String _collectionName = 'flutter';

//   Future<mongo.Db> connectToDb() async {
//     // final mongodbUrl =
//     //     'mongodb+srv://$_username:$_password@cluster0.mongo.net/$_dbName?retryWrites=true&w=majority';

//     final mongodbUrl =
//         'mongodb+srv://phanminh:phanminhdat11@cluster0.jxjisrt.mongodb.net/mean19112022?retryWrites=true&w=majority';

//     final db = await mongo.Db.create(mongodbUrl);
//     // var db = mongo.Db('mongodb://0.0.0.0:27017/flutter');
//     // var db = mongo.Db("mongodb://localhost:27017/flutter");
//     // final db = await mongo.Db.create(
//     //     'mongodb://phanminh:phanminhdat11@cluster0.jxjisrt.mongodb.net/mean19112022?retryWrites=true&w=majority');

//     await db.open();

//     return db;
//   }

//   // kiemtra() {
//   //   connectToDb()
//   //       .then((value) => print('ket qua: $value'))
//   //       .catchError((onError) => print('loi $onError'));
//   // }

//   Future<void> signup(String email, String password) async {
//     final db = await connectToDb();
//     final collection = db.collection(_collectionName);
//     await collection.insertOne({
//       'email': email,
//       'password': password,
//     });
//     await db.close();
//   } // Tên collection bạn muốn tạo
// }
// //var collection = db.collection('my_collection');
// //await collection.insertOne({'name': 'John Doe', 'age': 30});

import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;

import '../../data/MongoDB/config.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  static const String routeName = '/mongo_log';
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isNotValidate = false;

  void registerUser() async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      var regBody = {
        "email": emailController.text,
        "password": passwordController.text
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
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              child: Text('Elevated Button'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              onPressed: () => {registerUser()},
            ),
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
