import '../models/user.model.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<User>> fetchUser() async {
  final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

  if (response.statusCode == 200) {
    List jsonResponseList = json.decode(response.body);
    return jsonResponseList.map((userList) => User.fromJson(userList)).toList();
  } else {
    throw Exception('Failed to load User list');
  }
}
