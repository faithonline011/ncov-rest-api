import 'package:covid_app_with_rest_api/app/services/api_keys.dart';

enum Endpoint{
  cases,
  casesSuspected,
  casesConfirmed,
  deaths,
  recovered,
}

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

  Uri endpointUri(Endpoint endpoint) => Uri(
    scheme: 'https',
    host: host,
    path: _paths[endpoint],
  );


  static Map<Endpoint, String> _paths = {
    Endpoint.cases : 'cases',
    Endpoint.casesSuspected : 'casesSuspected',
    Endpoint.casesConfirmed : 'casesConfirmed',
    Endpoint.deaths : 'deaths',
    Endpoint.recovered : 'recovered',
  };


  
}