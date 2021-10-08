import 'package:flutter/material.dart';
class LastUpdatedStatusText extends StatelessWidget {

  final String? text;
  LastUpdatedStatusText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Text(
          text!,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
