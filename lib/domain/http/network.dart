// ignore_for_file: non_constant_identifier_names, avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wallet_app/infrastructure/local/hive_database.dart';

class Network {
  static String baseURL = '178.128.162.93:8808';

  static String postLogin = 'api/login';
  static String getUsersList = 'api/users';
  static String postCreateUser = 'api/users';
  static String getViewUser = 'api/users';
  static String putUpdateUser = 'api/users/';
  static String postDestroyUser = 'api/users/';
  static String getLogOut = 'api/logout';
  static String getAppsList = 'api/apps';
  static String postCreateApp = 'api/apps';
  static String getViewApp = 'api/apps';
  static String putUpdateApp = 'api/apps/';
  static String deleteApp = 'api/apps/';
  static String postCreateCredential = 'api/apps/';
  static String getViewCredential = 'api/apps/';
  static String putUpdateCredential = 'api/apps/';
  static String getProfileInfo = 'api/profile';
  static String putProfileInfo = 'api/profile';
  static String patchAppAvtiveness = 'api/apps/';
  static String patchUserAvtiveness = 'api/users/';

  static Future<Map<String, String>> getHeaders() async {
    dynamic token = await HiveService().getInfoLocal("token");
    if (token.isNotEmpty) {
      return {
        'Coutent-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      };
    } else {
      return {
        'Coutent-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json; charset=UTF-8',
      };
    }
  }

  // GET METHOD
  static Future<dynamic> GET(String url, {Map<String, dynamic>? param}) async {
    try {
      Map<String, String>? headers;
      await getHeaders().then((value) {
        headers = value;
      });
      Uri uri = Uri.http(baseURL, url, param);
      var response = await http.get(uri, headers: headers);
      if (response.statusCode <= 299) {
        return Future.value(jsonDecode(response.body));
      } else {
        return Future.value(jsonDecode(response.body));
      }
    } catch (e) {
      return Future.error("Server bilan aloqa mavjud emas");
    }
  }

  // POST METHOD
  static Future<dynamic> POST(String url, Map<String, dynamic> body,
      {Map<String, dynamic>? param}) async {
    try {
      Map<String, String>? headers;
      await getHeaders().then((value) {
        headers = value;
      });

      Uri uri = Uri.http(baseURL, url, param);

      var response = await http.post(uri, headers: headers, body: body);

      if (response.statusCode <= 299) {
        return response.body.isEmpty
            ? Future.value("succes")
            : Future.value(jsonDecode(response.body));
      } else {
        print(jsonDecode(response.body)["message"]);
        return Future.value('error');
      }
    } catch (e) {
      return Future.value("server bilan aloqa mavjud emas");
    }
  }

  // PUT METHOD
  static Future<dynamic> PUT(String url, Map<String, dynamic> body,
      {Map<String, dynamic>? param}) async {
    try {
      Map<String, String>? headers;
      await getHeaders().then((value) {
        headers = value;
      });

      Uri uri = Uri.http(baseURL, url, param);

      var response = await http.put(uri, headers: headers, body: body);

      if (response.statusCode <= 299) {
        return response.body.isNotEmpty
            ? Future.value("succes")
            : Future.value(jsonDecode(response.body));
      } else {
        print(jsonDecode(response.body)["message"]);
        return Future.value('error');
      }
    } catch (e) {
      return Future.error("server bilan aloqa mavjud emas");
    }
  }

  // PATCH METHOD
  static Future<dynamic> PATCH(String url, Map<String, dynamic> body,
      {Map<String, dynamic>? param}) async {
    try {
      Map<String, String>? headers;
      await getHeaders().then((value) {
        headers = value;
      });

      Uri uri = Uri.http(baseURL, url, param);

      var response = await http.patch(uri, headers: headers, body: body);

      if (response.statusCode <= 299) {
        return Future.value(jsonEncode(response.body));
      } else {
        return Future.value(jsonEncode(response.body));
      }
    } catch (e) {
      return Future.error("server bilan aloqa mavjud emas");
    }
  }

  // DELETE METHOD
  static Future<dynamic> DELETE(String url,
      {Map<String, dynamic>? param}) async {
    try {
      Map<String, String>? headers;
      await getHeaders().then((value) {
        headers = value;
      });

      Uri uri = Uri.http(baseURL, url, param);
      var response = await http.delete(uri, headers: headers);
      if (response.statusCode <= 299) {
        return response.body.isEmpty
            ? Future.value("succes")
            : Future.value(jsonDecode(response.body));
      } else {
        print(jsonDecode(response.body)["message"]);
        return Future.value('error');
      }
    } catch (e) {
      return Future.error("Server bilan aloqa mavjud emas");
    }
  }
}
