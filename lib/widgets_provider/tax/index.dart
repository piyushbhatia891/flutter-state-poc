import 'package:flutter/material.dart';
import 'package:flutter_price_cals/provider/priceModel.dart';
import 'package:provider/provider.dart';

class TaxField extends StatefulWidget {
  TaxField({Key key}) : super(key: key);
  _TaxFieldState createState() => _TaxFieldState();
}

class _TaxFieldState extends State<TaxField> {
  PriceModel _priceModel;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _priceModel = Provider.of<PriceModel>(context);
    return TextFormField(
      initialValue: _priceModel.taxPercentVal.toString(),
      decoration: InputDecoration(labelText: "Enter Tax Value"),
      onChanged: (val) {
        _priceModel.updateTax(val);
      },
    );
  }
}
