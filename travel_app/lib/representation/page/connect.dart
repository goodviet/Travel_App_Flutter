// import 'dart:convert';
// import 'package:shelf/shelf.dart';
// import 'package:shelf/shelf_io.dart' as io;

// Map<String, Map<String, dynamic>> data = {
//   'users': {
//     '1': {'name': 'John Doe', 'email': 'john.doe@example.com'},
//     '2': {'name': 'Jane Doe', 'email': 'jane.doe@example.com'},
//   },
// };

// Response _getUsers(Request request) {
//   return Response.ok(json.encode(data['users']),
//       headers: {'Content-Type': 'application/json'});
// }

// void main() async {
//   var handler = const Pipeline().addMiddleware(corsHeaders()).addHandler(_getUsers);
//   var server = await io.serve(handler, 'localhost', 8080);
//   print('Serving at http://${server.address.host}:${server.port}');
// }

// Middleware corsHeaders() {
//   return (Handler handler) {
//     return (Request request) async {
//       final Response response = await handler(request);
//       return response.change(headers: {
//         'Access-Control-Allow-Origin': '*',
//         'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS, HEAD',
//         'Access-Control-Allow-Headers': 'Origin, Content-Type, X-Auth-Token',
//       });
//     };
//   };
// }
import 'package:mongo_dart/mongo_dart.dart';

Future<void> main() async {
  final db = await Db.create(
      'mongodb://phanminh:phanminhdat11@cluster0.jxjisrt.mongodb.net/test?ssl=true&authSource=admin');
  //        'mongodb+srv://phanminh:phanminhdat11@cluster0.jxjisrt.mongodb.net/user?retryWrites=true&w=majority';
  await db.open();
  final collection = db.collection('books');
  final books = await collection.find().toList();
  print(books);
  await db.close();
}
