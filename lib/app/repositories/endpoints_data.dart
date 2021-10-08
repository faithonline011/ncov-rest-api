import 'package:covid_app_with_rest_api/app/services/api.dart';
import 'package:covid_app_with_rest_api/app/services/endpoint_data.dart';

class EndpointsData{
  EndpointsData(this.values);
  final Map<Endpoint, int> values;

}