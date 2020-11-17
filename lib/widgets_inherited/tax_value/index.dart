import 'package:flutter/material.dart';
import 'package:flutter_price_cals/inherited/stateful_container.dart';
import 'package:flutter_price_cals/inherited/stateful_container_state.dart';
import 'package:flutter_price_cals/provider/priceModel.dart';
import 'package:provider/provider.dart';

class TaxValueInheritedWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TaxValueInheritedWidgetState();
  }
}

class TaxValueInheritedWidgetState extends State<TaxValueInheritedWidget> {
  PriceModel _priceModel;
  MyStatefulWidgetState state;
  double _taxVal = 0.0;
  void initState() {
    super.initState();
  }

  void didChangeDependencies() {
    state = MyStatefulWidget.of(context);
    _taxVal = state.taxCalculatedVal;
  }

  @override
  Widget build(BuildContext context) {
    _taxVal = MyStatefulWidget.of(context).taxCalculatedVal;
    return Text(
      "${_taxVal}",
      style: TextStyle(
        color: Colors.black,
      ),
    );
  }
}
