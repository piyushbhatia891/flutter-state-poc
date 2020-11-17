import 'package:flutter/material.dart';
import 'package:flutter_price_cals/inherited/stateful_container.dart';
import 'package:flutter_price_cals/inherited_widget_file.dart';

class MyStatefulWidgetState extends State<MyStatefulWidget> {
  double _priceValue = 0;
  double _tipPercentValue = 0;
  double _tipCalculatedValue = 0;
  double _totalValue = 0;
  double get priceValue => _priceValue;

  double get tipPercentVal => _tipPercentValue;

  double get tipCalculatedVal => _tipCalculatedValue;
  double get totalVal => _totalValue;

  void updatePrice(String val) {
    setState(() {
      _priceValue = double.parse(val);
      _totalValue = _priceValue + _tipCalculatedValue;
    });
  }

  void updateTip(String val) {
    setState(() {
      _tipCalculatedValue = _priceValue * (double.parse(val) / 100);
      _totalValue = _priceValue + _tipCalculatedValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      child: widget.child,
      data: this,
    );
  }
}
