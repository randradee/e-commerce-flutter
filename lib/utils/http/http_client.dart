import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store/utils/helpers/helper_functions.dart';

class AppHttpClientHelper {
  static const String _baseUrl = 'https://api.example.com';

  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> post(
    String endpoint,
    dynamic data,
  ) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: data.isNotEmpty ? json.encode(data) : null,
    );
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: data.isNotEmpty ? json.encode(data) : null,
    );
    return _handleResponse(response);
  }

  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  static Map<String, dynamic> _handleResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return json.decode(response.body) as Map<String, dynamic>;
      case 201:
        return json.decode(response.body) as Map<String, dynamic>;
      case 204:
        return <String, dynamic>{'message': 'No content'};
      default:
        AppHelperFunctions.showAlert(
          'Error',
          'Error loading data: ${response.statusCode} - ${response.reasonPhrase}',
        );
        throw Exception(
          'Error loading data: ${response.statusCode} - ${response.reasonPhrase}',
        );
    }
  }
}
