import 'package:flutter/material.dart';
import 'package:flutter_price_cals/inherited/stateful_container.dart';
import 'package:flutter_price_cals/inherited_widget_file.dart';

class MyStatefulWidgetState extends State<MyStatefulWidget> {
  double _priceValue = 0;
  double _taxPercentValue = 0;
  double _taxCalculatedValue = 0;
  double _totalValue = 0;
  double get priceValue => _priceValue;

  double get taxPercentVal => _taxPercentValue;

  double get taxCalculatedVal => _taxCalculatedValue;
  double get totalVal => _totalValue;

  void updatePrice(String val) {
    setState(() {
      _priceValue = double.parse(val);
      _totalValue = _priceValue + _taxCalculatedValue;
    });
  }

  void updateTax(String val) {
    setState(() {
      _taxCalculatedValue = _priceValue * (double.parse(val) / 100);
      _totalValue = _priceValue + _taxCalculatedValue;
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
