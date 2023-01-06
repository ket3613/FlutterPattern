import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widetns_app/screens/screen_1_index.dart';

import 'screens/screen_0_login.dart';
import 'models/model_query.dart';

void main() {
  //APP 구동
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserSessionInfo())
      ],
      child: MaterialApp(
        title: 'flutter_widetns_app',
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          '/mainMenu': (context) => Screens1Index(),
        },
      ),
    );
  }
}



