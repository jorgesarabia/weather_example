import 'package:injectable/injectable.dart';

import 'package:http/http.dart' as http;
import 'package:weather_example/weather_info.dart';

@singleton
class NetworkService {
  final String baseUrl = 'http://dataservice.accuweather.com/';

  Future<http.Response> get({required String base, required String endpoint, String? params}) async {
    return http.get(Uri.parse('$baseUrl$base/v1/$endpoint?apikey=$apiKey&$params'));
  }
}
