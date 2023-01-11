import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widetns_app/screens/screen_1_index.dart';
import 'package:widetns_app/screens/screen_2_myPage.dart';
import 'package:widetns_app/screens/screen_3_messageBox.dart';
import 'package:widetns_app/screens/screen_4_receiptManagement.dart';

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
        initialRoute: '/login',
        routes: {
          '/login': (context) => Screens0Login(),
          '/mainMenu': (context) => Screens1Index(),
          '/myPage': (context) => Screens2MyPage(),
          '/messageBox': (context) => Screens3MessageBox(),
          '/receiptManagement': (context) => Screens4ReceiptManagement(),

        },
      ),
    );
  }
}



