import 'package:covid_app_with_rest_api/app/repositories/data_repository.dart';
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
  int _cases = -1;

  @override
  void initState(){
    super.initState();
    updateData();
  }

  Future<void> updateData() async {
    final dataRepository = Provider.of<DataRepository>(context, listen: false);
    final cases = await dataRepository.getEndpointData(Endpoint.cases);
    setState(() {
      _cases = cases;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Coronavirus Tracker"),),
      body: RefreshIndicator(
        onRefresh: updateData,
        child: ListView(
          children: [
            EndpointCard(
              Endpoint.cases,
              _cases,
            ),
          ],
        ),
      )
    );
  }
}
