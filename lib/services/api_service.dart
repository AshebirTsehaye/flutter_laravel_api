import 'dart:convert';
import 'package:http/http.dart' as http;
import '../core/constants.dart';
import '../models/user.dart';

class ApiService {
  Future<List<User>> getUsers() async {
    final response = await http.get(Uri.parse('$apiBaseUrl/users'));
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body)['data'];
      return data.map((e) => User.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
