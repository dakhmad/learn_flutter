import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ibadah_list/model/doa.dart';


class ApiService {
  static const String _baseUrl = "https://doa-doa-api-ahmadramadhan.fly.dev/api";

  Future<List<Doa>> fetchProducts() async {
    final response = await http.get(Uri.parse(_baseUrl));

    if(response.statusCode == 200) {
      List<dynamic> jsonData = jsonDecode(response.body);
      return jsonData.map((item) => Doa.fromJson(item)).toList();
    } else {
      throw Exception("Failed to load dara");
    }
  }
}