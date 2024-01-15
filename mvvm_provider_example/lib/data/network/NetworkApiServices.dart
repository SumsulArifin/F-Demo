import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:mvvm_provider_example/data/app_exception.dart';
import 'package:mvvm_provider_example/data/network/BaseApiServices.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiService {
  @override
  Future getGETApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet');
    }
    return responseJson;
  }

  @override
  Future getPOSTApiResponse(String url,dynamic data) async{
    dynamic responseJson;
    try {
      Response response =await post(
        Uri.parse(url),
        body:data,
      ).timeout(Duration(seconds: 20));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      default:
        throw FetchDataException("Error accorded server connection" +
            "with status code" +
            response.statusCode.toString());
    }
  }
}
