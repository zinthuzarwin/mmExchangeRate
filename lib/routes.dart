import 'package:flutter/material.dart';
import 'package:myanmar_exchange_rate/screens/about.dart';
import 'package:myanmar_exchange_rate/screens/credit.dart';
import 'package:myanmar_exchange_rate/screens/home.dart';
import 'package:myanmar_exchange_rate/screens/web_view.dart';

class Routes {
  Routes() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Myanmar Exchange Rate',
      theme: ThemeData(
        primaryColor: Color(0xFF9CCBCB),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/credit': (context) => Credit(),
        '/web_view': (context) => WebView(),
        '/about': (context) => About(),
      },
    ));
  }
}
