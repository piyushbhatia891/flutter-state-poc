import 'package:flutter/material.dart';
import 'package:flutter_price_cals/provider/priceModel.dart';
import 'package:provider/provider.dart';

class TipValue extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TipValueState();
  }
}

class TipValueState extends State<TipValue> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PriceModel>(builder: (context, price, child) {
      return Text(
        "Tip : ${price.tipCalculatedVal}",
        style: TextStyle(
          color: Colors.black,
        ),
      );
    });
  }
}
