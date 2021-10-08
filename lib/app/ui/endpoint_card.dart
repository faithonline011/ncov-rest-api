import 'package:covid_app_with_rest_api/app/services/api.dart';
import 'package:flutter/material.dart';

class EndpointCardData {
  EndpointCardData(this.title, this.assetName, this.color);
  final String title;
  final String assetName;
  final Color color;
}

class EndpointCard extends StatelessWidget {

  final Endpoint endpoint;
  final int? value;

  static final Map<Endpoint, EndpointCardData> _cardsData = {
    Endpoint.cases:
    EndpointCardData('Cases', 'assets/count.png', const Color(0xFFFFF492)),
    Endpoint.casesSuspected: EndpointCardData(
        'Suspected cases', 'assets/suspect.png', const Color(0xFFEEDA28)),
    Endpoint.casesConfirmed: EndpointCardData(
        'Confirmed cases', 'assets/fever.png', const Color(0xFFE99600)),
    Endpoint.deaths:
    EndpointCardData('Deaths', 'assets/death.png', const Color(0xFFE40000)),
    Endpoint.recovered:
    EndpointCardData('Recovered', 'assets/patient.png', const Color(0xFF70A901)),
  };
  const EndpointCard(this.endpoint, this.value);
  @override
  Widget build(BuildContext context) {
    final cardData = _cardsData[endpoint];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Card(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(cardData!.title,style: Theme.of(context).textTheme.headline6!.copyWith(color: cardData.color),),
              const SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(cardData.assetName, color: cardData.color,),
                  Text(
                    (value!=null && value!=0)? value.toString():"Unavailable Now",
                    style: Theme.of(context).textTheme.headline5!.copyWith(color: cardData.color, fontWeight: FontWeight.w500),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
