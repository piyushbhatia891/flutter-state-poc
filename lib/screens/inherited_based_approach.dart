import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_price_cals/inherited/stateful_container.dart';
import 'package:flutter_price_cals/widgets_inherited/price/index.dart';
import 'package:flutter_price_cals/widgets_inherited/tip/index.dart';
import 'package:flutter_price_cals/widgets_inherited/tip_value/index.dart';
import 'package:flutter_price_cals/widgets_inherited/total_value/index.dart';

class InheritedBasedAppWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: MyStatefulWidget(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: SizedBox()),
            PriceFieldInheritedWidget(),
            TipFieldInheritedWidget(),
            TipValueInheritedWidget(),
            TotalPriceValueInheritedWidget(),
            Expanded(child: SizedBox()),
          ],
        ),
      ),
    ));
  }
}
