import 'package:flutter/material.dart';

class PriceModel extends ChangeNotifier {
  double _priceValue = 0;
  double _taxPercentValue = 15.0;
  double _taxCalculatedValue = 0.0;
  double _totalValue = 0;
  double get priceValue => _priceValue;

  double get taxPercentVal => _taxPercentValue;

  double get taxCalculatedVal => _taxCalculatedValue;
  double get totalVal => _totalValue;

  void updatePrice(String val) {
    _priceValue = double.parse(val);
    _totalValue = _priceValue + _taxCalculatedValue;
    notifyListeners();
  }

  void updateTax(String val) {
    _taxCalculatedValue = _priceValue * (double.parse(val) / 100);
    _totalValue = _priceValue + _taxCalculatedValue;
    notifyListeners();
  }
}
