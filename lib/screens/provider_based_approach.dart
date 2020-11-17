import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_price_cals/widgets_provider/price/index.dart';
import 'package:flutter_price_cals/widgets_provider/tip/index.dart';
import 'package:flutter_price_cals/widgets_provider/tip_value/index.dart';
import 'package:flutter_price_cals/widgets_provider/total_value/index.dart';

class ProviderBasedAppWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: SizedBox()),
            PriceField(),
            TipField(),
            TipValue(),
            TotalPriceValue(),
            Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
