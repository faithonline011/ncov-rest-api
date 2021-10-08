import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app/repositories/data_repository.dart';
import 'app/services/api.dart';
import 'app/services/api_service.dart';
import 'app/ui/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<DataRepository>(
      create: (_) => DataRepository(
        apiService: APIService(API.sandbox()),
      ),
      child: MaterialApp(
        title: 'Coronavirus Tracker',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0xff1010101),
          cardColor: Color(0xFF222222),
        ),
        home: Dashboard(),
      ),
    );
  }
}

