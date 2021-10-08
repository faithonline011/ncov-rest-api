import 'package:covid_app_with_rest_api/app/repositories/data_repository.dart';
import 'package:covid_app_with_rest_api/app/repositories/endpoints_data.dart';
import 'package:covid_app_with_rest_api/app/ui/last_updated_status_text.dart';
import 'package:provider/provider.dart';
import 'package:covid_app_with_rest_api/app/services/api.dart';
import 'package:flutter/material.dart';

import 'endpoint_card.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  EndpointsData _endpointsData = EndpointsData({});

  @override
  void initState(){
    super.initState();
    updateData();
  }

  Future<void> updateData() async {
    final dataRepository = Provider.of<DataRepository>(context, listen: false);
    final endpointsData = await dataRepository.getAllEndpointsData();
    setState(() {
      _endpointsData = endpointsData;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_endpointsData);
    print(_endpointsData.values);
    print(_endpointsData.values[Endpoint.cases]);
    return Scaffold(
      appBar: AppBar(title: const Text("Coronavirus Tracker"),),
      body: RefreshIndicator(
        onRefresh: updateData,
        child: ListView(
          children: [
            for (var endpoint in Endpoint.values)
              EndpointCard(
                endpoint,
                _endpointsData.values[endpoint],
              ),
          ],
        ),
      )
    );
  }
}
