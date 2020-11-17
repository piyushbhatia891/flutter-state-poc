import 'package:flutter/material.dart';
import 'package:flutter_price_cals/inherited/stateful_container.dart';
import 'package:flutter_price_cals/inherited/stateful_container_state.dart';
import 'package:flutter_price_cals/provider/priceModel.dart';
import 'package:provider/provider.dart';

class TipFieldInheritedWidget extends StatefulWidget {
  TipFieldInheritedWidget({Key key}) : super(key: key);
  TipFieldInheritedWidgetState createState() => TipFieldInheritedWidgetState();
}

class TipFieldInheritedWidgetState extends State<TipFieldInheritedWidget> {
  MyStatefulWidgetState state;
  double _tipPercent = 0.0;
  void initState() {
    super.initState();
  }

  void didChangeDependencies() {
    state = MyStatefulWidget.of(context);
    _tipPercent = state.tipPercentVal;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: _tipPercent.toString(),
      decoration: InputDecoration(labelText: "Enter Tip Value"),
      onChanged: (val) {
        state.updateTip(val);
      },
    );
  }
}
