import 'dart:convert';

import 'package:sdl_app/product_model.dart';
import 'package:http/http.dart' as http;

class ProductService {


  static Future<List<Product>> fetchProducts() async {
    final response =
    await http.get(Uri.parse('http://laf.sdlrnd.com/api/product'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body)['products'];
      return data.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

}