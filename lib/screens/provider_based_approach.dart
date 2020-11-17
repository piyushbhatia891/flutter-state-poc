import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_price_cals/widgets_provider/price/index.dart';
import 'package:flutter_price_cals/widgets_provider/tax/index.dart';
import 'package:flutter_price_cals/widgets_provider/tax_value/index.dart';
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
            TaxField(),
            TaxValue(),
            TotalPriceValue(),
            Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
