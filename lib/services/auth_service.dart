import 'dart:convert';
import 'package:bankga/shared/shared_values.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<bool> checkEmail(String email) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/check-email'),
        headers: {
          'Content-Type': 'application/json', // Tambahkan header ini
        },
        body: jsonEncode({
          'email': email, // Formatkan body sebagai JSON
        }),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        if (responseData.containsKey('email_exists')) {
          return !(responseData['email_exists'] as bool);
        } else {
          throw Exception(
              'Invalid response format: missing "email_exists" key');
        }
      } else {
        print('Response body: ${response.body}');
        throw Exception('Failed to check email: ${response.statusCode}');
      }
    } catch (e) {
      print('Error in checkEmail: $e');
      return false;
    }
  }
}
