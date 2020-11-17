import 'package:flutter/material.dart';
import 'package:flutter_price_cals/inherited/stateful_container.dart';
import 'package:flutter_price_cals/inherited/stateful_container_state.dart';

class TipValueInheritedWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TipValueInheritedWidgetState();
  }
}

class TipValueInheritedWidgetState extends State<TipValueInheritedWidget> {
  MyStatefulWidgetState state;
  double _tipVal = 0.0;
  void initState() {
    super.initState();
  }

  void didChangeDependencies() {
    state = MyStatefulWidget.of(context);
    _tipVal = state.tipCalculatedVal;
  }

  @override
  Widget build(BuildContext context) {
    _tipVal = MyStatefulWidget.of(context).tipCalculatedVal;
    return Text(
      "Tip : ${_tipVal}",
      style: TextStyle(
        color: Colors.black,
      ),
    );
  }
}
