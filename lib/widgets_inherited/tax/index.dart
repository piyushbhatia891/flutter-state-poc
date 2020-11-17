import 'package:flutter/material.dart';
import 'package:flutter_price_cals/inherited/stateful_container.dart';
import 'package:flutter_price_cals/inherited/stateful_container_state.dart';
import 'package:flutter_price_cals/provider/priceModel.dart';
import 'package:provider/provider.dart';

class TaxFieldInheritedWidget extends StatefulWidget {
  TaxFieldInheritedWidget({Key key}) : super(key: key);
  _TaxFieldInheritedWidgetState createState() =>
      _TaxFieldInheritedWidgetState();
}

class _TaxFieldInheritedWidgetState extends State<TaxFieldInheritedWidget> {
  MyStatefulWidgetState state;
  double _taxPercent = 0.0;
  void initState() {
    super.initState();
  }

  void didChangeDependencies() {
    state = MyStatefulWidget.of(context);
    _taxPercent = state.taxPercentVal;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: _taxPercent.toString(),
      decoration: InputDecoration(labelText: "Enter Tax Value"),
      onChanged: (val) {
        state.updateTax(val);
      },
    );
  }
}
