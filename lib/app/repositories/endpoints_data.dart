import 'package:covid_app_with_rest_api/app/services/api.dart';

class EndpointsData{
  EndpointsData(this.values);
  final Map<Endpoint, int> values;
  int? get cases => values[Endpoint.cases];
  int? get casesSuspected => values[Endpoint.casesSuspected];
  int? get casesConfirmed => values[Endpoint.casesConfirmed];
  int? get deaths => values[Endpoint.deaths];
  int? get recovered => values[Endpoint.recovered];
}