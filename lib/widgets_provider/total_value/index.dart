import 'package:flutter/material.dart';
import 'package:flutter_price_cals/provider/priceModel.dart';
import 'package:provider/provider.dart';

class TotalPriceValue extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TotalPriceValueState();
  }
}

class TotalPriceValueState extends State<TotalPriceValue> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PriceModel>(builder: (context, price, child) {
      return Text(
        "${price.totalVal}",
        style: TextStyle(
          color: Colors.black,
        ),
      );
    });
  }
}
