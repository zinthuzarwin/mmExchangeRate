import 'package:flutter/material.dart';
import 'package:myanmar_exchange_rate/screens/web_view.dart';
import 'package:myanmar_exchange_rate/widgets/app_bar.dart';
import 'package:myanmar_exchange_rate/widgets/drawer_widget.dart';

class Credit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Myanmar Currency Exchange Rates',
      ),
      drawer: DrawerWidget(
        creditColor: Color(0xFF9CCBCB),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.account_balance),
                  title: Text('Data'),
                  subtitle: Text('Central Bank of Myanmar'),
                ),
                ButtonTheme.bar(
                  // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('Go'),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/web_view',
                            arguments: WebViewArguments(
                                'Central Bank of Myanmar',
                                'https://forex.cbm.gov.mm'),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.image),
                  title: Text('Icons'),
                  subtitle: Text('Icons made by Freepik from www.flaticon.com'),
                ),
                ButtonTheme.bar(
                  // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('Go Freepik'),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/web_view',
                            arguments: WebViewArguments(
                                'Freepik', 'https://www.freepik.com'),
                          );
                        },
                      ),
                      FlatButton(
                        child: const Text('Go Flaticon'),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/web_view',
                            arguments: WebViewArguments(
                                'Flaticon', 'https://www.flaticon.com'),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
