import 'package:flutter/material.dart';
import 'package:flutter_price_cals/inherited/stateful_container_state.dart';
import 'package:flutter_price_cals/inherited_widget_file.dart';

class MyStatefulWidget extends StatefulWidget {
  final Widget child;

  const MyStatefulWidget({Key key, @required this.child}) : super(key: key);

  static MyStatefulWidgetState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>().data;
  }

  @override
  MyStatefulWidgetState createState() => MyStatefulWidgetState();
}
