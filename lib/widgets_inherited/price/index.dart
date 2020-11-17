import 'package:flutter/material.dart';
import 'package:flutter_price_cals/inherited/stateful_container.dart';
import 'package:flutter_price_cals/inherited/stateful_container_state.dart';
import 'package:flutter_price_cals/provider/priceModel.dart';
import 'package:provider/provider.dart';

class PriceFieldInheritedWidget extends StatefulWidget {
  PriceFieldInheritedWidget({Key key}) : super(key: key);
  _PriceFieldInheritedWidgetState createState() =>
      _PriceFieldInheritedWidgetState();
}

class _PriceFieldInheritedWidgetState extends State<PriceFieldInheritedWidget> {
  PriceModel _priceModel;
  MyStatefulWidgetState state;
  double _priceValue = 0.0;
  void initState() {
    super.initState();
  }

  void didChangeDependencies() {
    state = MyStatefulWidget.of(context);
    _priceValue = state.priceValue;
  }

  @override
  Widget build(BuildContext context) {
    _priceValue = MyStatefulWidget.of(context).priceValue;
    return TextFormField(
      initialValue: _priceValue.toString(),
      decoration: InputDecoration(labelText: "Enter Price Value"),
      onChanged: (val) {
        state.updatePrice(val);
      },
    );
  }
}
