import 'package:flutter/material.dart';
import 'package:flutter_price_cals/inherited/stateful_container.dart';
import 'package:flutter_price_cals/inherited/stateful_container_state.dart';
import 'package:flutter_price_cals/provider/priceModel.dart';
import 'package:provider/provider.dart';

class TotalPriceValueInheritedWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TotalPriceValueInheritedWidgetState();
  }
}

class TotalPriceValueInheritedWidgetState
    extends State<TotalPriceValueInheritedWidget> {
  PriceModel _priceModel;
  MyStatefulWidgetState state;
  double _totalVal = 0.0;
  void initState() {
    super.initState();
  }

  void didChangeDependencies() {
    state = MyStatefulWidget.of(context);
    _totalVal = state.totalVal;
  }

  @override
  Widget build(BuildContext context) {
    _totalVal = MyStatefulWidget.of(context).totalVal;
    return Text(
      "Total : ${_totalVal}",
      style: TextStyle(
        color: Colors.black,
      ),
    );
  }
}
