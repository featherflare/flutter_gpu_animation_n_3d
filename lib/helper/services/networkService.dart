import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constants/network_api.dart';

class NetworkService {
  NetworkService._internal();
  static final NetworkService _instance = NetworkService._internal();
  factory NetworkService() => _instance;
  static var client = http.Client();
  static dynamic uriResponse;

  static postmethod({required String api, Object? body}) async {
    print(jsonEncode(body));
    try {
      Uri uri = Uri.https(NetworkAPI.baseURL, api);

      uriResponse = await client.post(
        uri,
        headers: {
          'Content-type': 'application/json',
        },
        body: jsonEncode(body),
      );
      print(uriResponse.statusCode);
      if (uriResponse.statusCode == 200) {
        final jsonResponse =
            jsonDecode(const Utf8Decoder().convert(uriResponse.bodyBytes));
        final data = jsonEncode(jsonResponse);
        print(data);
        return data;
      } else if (uriResponse.statusCode == 401) {}
    } catch (e) {
      print("Error Mainten Insert : ${e.toString()} ");
    }
  }
}
