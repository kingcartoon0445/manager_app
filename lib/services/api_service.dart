import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  final String _baseUrl = 'https://example.com/api'; // URL API cơ sở của bạn

  // Phương thức GET
  Future<http.Response> get(String endpoint) async {
    final response = await http.get(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: _setHeaders(),
    );
    return _processResponse(response);
  }

  // Phương thức POST
  Future<http.Response> post(String endpoint, Map<String, dynamic> body) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: _setHeaders(),
      body: json.encode(body),
    );
    return _processResponse(response);
  }

  // Phương thức PUT
  Future<http.Response> put(String endpoint, Map<String, dynamic> body) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: _setHeaders(),
      body: json.encode(body),
    );
    return _processResponse(response);
  }

  // Phương thức DELETE
  Future<http.Response> delete(String endpoint) async {
    final response = await http.delete(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: _setHeaders(),
    );
    return _processResponse(response);
  }

  // Thiết lập header cho các yêu cầu
  Map<String, String> _setHeaders() {
    return {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      // Thêm các headers khác nếu cần (ví dụ Authorization)
    };
  }

  // Xử lý phản hồi từ server
  http.Response _processResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return response;
    } else {
      throw Exception('Error: ${response.statusCode}');
    }
  }
}
