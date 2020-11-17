import 'package:flutter/material.dart';

class PriceModel extends ChangeNotifier {
  double _priceValue = 0;
  double _tipPercentValue = 0;
  double _tipCalculatedValue = 0;
  double _totalValue = 0;
  double get priceValue => _priceValue;

  double get tipPercentVal => _tipPercentValue;

  double get tipCalculatedVal => _tipCalculatedValue;
  double get totalVal => _totalValue;

  void updatePrice(String val) {
    _priceValue = double.parse(val);
    _totalValue = _priceValue + _tipCalculatedValue;
    notifyListeners();
  }

  void updateTip(String val) {
    _tipCalculatedValue = _priceValue * (double.parse(val) / 100);
    _totalValue = _priceValue + _tipCalculatedValue;
    notifyListeners();
  }
}
