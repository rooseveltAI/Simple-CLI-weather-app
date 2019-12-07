import 'package:cli/constants.dart';
import 'package:cli/models/models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:meta/meta.dart';

Future<ForeCast> getWather(
    {@required String zip, String country = 'de'}) async {
  var url = '${BASE_URL}zip=$zip,$country&units=metric${API_KEY_QUERY}';
  var response = await http.get(url);
  var jsonResponse = json.decode(response.body);
  return ForeCast.fromJson(jsonResponse);
}
