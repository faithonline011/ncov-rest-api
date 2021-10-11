import 'package:covid_app_with_rest_api/app/services/api.dart';
import 'package:covid_app_with_rest_api/app/services/endpoint_data.dart';

class EndpointsData{
  EndpointsData({required this.values});
  final Map<Endpoint, EndpointData> values;
  EndpointData? get cases => values[Endpoint.cases];
  EndpointData? get casesSuspected => values[Endpoint.casesSuspected];
  EndpointData? get casesConfirmed => values[Endpoint.casesConfirmed];
  EndpointData? get deaths => values[Endpoint.deaths];
  EndpointData? get recovered => values[Endpoint.recovered];

}