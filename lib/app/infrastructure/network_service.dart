import 'package:injectable/injectable.dart';

import 'package:http/http.dart' as http;

@singleton
class NetworkService {
  final String baseUrl = '';

  Future<http.Response> get({required String endpoint, String? params}) async {
    return http.get(Uri.parse(baseUrl));
  }
}
