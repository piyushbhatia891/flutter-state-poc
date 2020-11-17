import 'package:flutter/material.dart';
import 'package:flutter_price_cals/provider/priceModel.dart';
import 'package:provider/provider.dart';

class PriceField extends StatefulWidget {
  PriceField({Key key}) : super(key: key);
  _PriceFieldState createState() => _PriceFieldState();
}

class _PriceFieldState extends State<PriceField> {
  PriceModel _priceModel;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _priceModel = Provider.of<PriceModel>(context);
    return TextFormField(
      initialValue: _priceModel.priceValue.toString(),
      decoration: InputDecoration(labelText: "Enter Price Value"),
      onChanged: (val) {
        _priceModel.updatePrice(val);
      },
    );
  }
}
