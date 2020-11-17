import 'package:flutter/material.dart';
import 'package:flutter_price_cals/provider/priceModel.dart';
import 'package:flutter_price_cals/screens/home.dart';
import 'package:flutter_price_cals/screens/inherited_based_approach.dart';
import 'package:flutter_price_cals/screens/provider_based_approach.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PriceModel(),
      child: MaterialApp(
        title: 'Price Calculator',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          "/": (context) => HomePage(),
          "/provider": (context) => ProviderBasedAppWidget(),
          "/inherited": (context) => InheritedBasedAppWidget(),
        },
        initialRoute: "/",
      ),
    );
  }
}
