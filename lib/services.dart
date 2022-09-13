import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task_2/model.dart';

class Services {

  static Future<PriceModel> getPrice({required String type}) async {
    http.Response response = await http.get(
      Uri.parse('https://www.goldapi.io/api/$type/USD/'),
      headers: {'x-access-token': 'goldapi-gsix4tl7z8f5kl-io'},
    );
    Map<String, dynamic> data = jsonDecode(response.body);
    return PriceModel.fromJson(data);
  }
}
