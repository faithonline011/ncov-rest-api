import 'package:covid_app_with_rest_api/app/services/api.dart';
import 'package:flutter/material.dart';
class EndpointCard extends StatelessWidget {

  final Endpoint endpoint;
  final int value;


  EndpointCard(this.endpoint, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Card(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Cases ",style: Theme.of(context).textTheme.headline5,),
              Text(
                (value!=-1)? value.toString():"loading...",
                style: Theme.of(context).textTheme.headline4,),
            ],
          ),
        ),
      ),
    );
  }
}
