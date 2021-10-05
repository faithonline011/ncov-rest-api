import 'package:covid_app_with_rest_api/app/services/api_keys.dart';

class API{
  final String apiKey;
  API ({required this.apiKey});

  static const String host = "ncov2019-admin.firebaseapp.com";

  factory API.sandbox() => API(apiKey: APIKeys.ncovSandboxKey);
  Uri tokenUri() => Uri(
    scheme: 'https',
    host: host,
    path: 'token',
  );
}