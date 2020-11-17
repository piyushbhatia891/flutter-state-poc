import 'package:flutter/material.dart';
import 'package:flutter_price_cals/provider/priceModel.dart';
import 'package:provider/provider.dart';

class TaxValue extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TaxValueState();
  }
}

class TaxValueState extends State<TaxValue> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PriceModel>(builder: (context, price, child) {
      return Text(
        "Tip : ${price.taxCalculatedVal}",
        style: TextStyle(
          color: Colors.black,
        ),
      );
    });
  }
}
