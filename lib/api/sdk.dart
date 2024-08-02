import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:multivendor_store_app/api/stock.dart';

class APISDK {
  String baseUrl = 'http://copiwin.com:9000';
  Future<List<Stock>> listStocks() async {
    var response = await http.get(Uri.parse("$baseUrl/stocks/"));
    if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List<Map<String, dynamic>>)
          .map((element) {
        return Stock.fromJson(element);
      }).toList();
    } else {
      throw Exception(response.statusCode.toString());
    }
  }
}
