import 'dart:convert';

import 'package:bankga/shared/shared_values.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<bool> checkEmail(String email) async {
    try {
      final res = await http.post(Uri.parse('$baseUrl//check-email'), body: {
        'email': email,
      });

      if (res.statusCode == 200) {
        return jsonDecode(res.body)['email_exists'];
      } else {
        return jsonDecode(res.body)['error'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
