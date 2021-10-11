import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LastUpdatedDateFormatter{
  final DateTime lastUpdatedTime;
  LastUpdatedDateFormatter({required this.lastUpdatedTime});
}
class LastUpdatedStatusText extends StatelessWidget {
  final String text;
  const LastUpdatedStatusText({required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
