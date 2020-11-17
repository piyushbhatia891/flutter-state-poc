import 'package:flutter/material.dart';
import 'package:flutter_price_cals/provider/priceModel.dart';
import 'package:provider/provider.dart';

class TipField extends StatefulWidget {
  TipField({Key key}) : super(key: key);
  TipFieldState createState() => TipFieldState();
}

class TipFieldState extends State<TipField> {
  PriceModel _priceModel;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _priceModel = Provider.of<PriceModel>(context);
    return TextFormField(
      initialValue: _priceModel.tipPercentVal.toString(),
      decoration: InputDecoration(labelText: "Enter Tip Value"),
      onChanged: (val) {
        _priceModel.updateTip(val);
      },
    );
  }
}
