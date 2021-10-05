import 'dart:convert';

import 'package:covid_app_with_rest_api/app/services/api.dart';
import 'package:http/http.dart' as http;

class APIService{
  final API api;
  APIService(this.api);
  String token = "https://ncov2019-admin.firebaseapp.com/token";

  Future<String> getAccessToken() async {
    final response = await http.post(
      api.tokenUri(),
      headers: {'Authorization' : 'Basic ${api.apiKey}'}
    );
    if(response.statusCode == 200){
      final data = json.decode(response.body);
      final accessToken = data['access_token'];
      if(accessToken!=null){
        return accessToken;
      }
    }
    print('Request ${api.tokenUri()} failed\nResponse: ${response.statusCode} ${response.reasonPhrase}');
    throw response;
  }
}