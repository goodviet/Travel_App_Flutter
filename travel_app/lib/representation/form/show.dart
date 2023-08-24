// import 'package:flutter/material.dart';

// class MyLoginPage extends StatefulWidget {
//   @override
//   _MyLoginPageState createState() => _MyLoginPageState();
// }

// class _MyLoginPageState extends State<MyLoginPage> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   bool _isObscure = true;

//   void _toggleObscure() {
//     setState(() {
//       _isObscure = !_isObscure;
//     });
//   }

//   void _login() {
//     final form = _formKey.currentState;
//     if (form!.validate()) {
//       String email = _emailController.text;
//       String password = _passwordController.text;

//       if (email.isNotEmpty && password.isNotEmpty) {
//         // TODO: Do login process here.
//       } else {
//         // _showAlert();
//       }
//     }
//   }

//   // void _showAlert() {
//   //   showDialog(
//   //     context: context,
//   //     builder: (context) {
//   //       return AlertDialog(
//   //         title: Text("Empty fields"),
//   //         content: Text("Please enter both email and password."),
//   //         actions: [
//   //           ElevatedButton(
//   //             onPressed: () => Navigator.pop(context),
//   //             child: Text("OK"),
//   //           ),
//   //         ],
//   //       );
//   //     },
//   //   );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Login"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               TextFormField(
//                 controller: _emailController,
//                 decoration: InputDecoration(labelText: 'Email'),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter email';
//                   }
//                   return null;
//                 },
//               ),
//               TextFormField(
//                 controller: _passwordController,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   suffixIcon: IconButton(
//                     icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
//                     onPressed: _toggleObscure,
//                   ),
//                 ),
//                 obscureText: _isObscure,
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter password';
//                   }
//                   return null;
//                 },
//               ),
//               ElevatedButton(
//                 onPressed: _login,
//                 child: Text('Login'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
void main() {
  List<Item> items = [
    Item('item1', 60, 10),
    Item('item2', 100, 20),
    Item('item3', 120, 30),
  ];
  int capacity = 50;

  items.sort((a, b) => b.valuePerUnit.compareTo(a.valuePerUnit));

  int value = 0;
  int weight = 0;
  List<Item> selectedItems = [];

  for (int i = 0; i < items.length; i++) {
    if (weight + items[i].weight <= capacity) {
      weight += items[i].weight;
      value += items[i].value;
      selectedItems.add(items[i]);
    }
  }

  print('Selected items: $selectedItems');
  print('Total value: $value');
  print('Total weight: $weight');
}

// class Item {
//   String name;
//   int value;
//   int weight;
//   late double valuePerUnit;

//   Item(this.name, this.value, this.weight);

//   @override
//   String toString() {
//     return '$name (value: $value, weight: $weight)';
//   }
// }
class Item {
  String name;
  int value;
  int weight;
  late double valuePerUnit;

  Item(this.name, this.value, this.weight) {
    valuePerUnit = value / weight;
  }

  @override
  String toString() {
    return '$name (value: $value, weight: $weight)';
  }
}
