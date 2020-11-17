import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/provider");
                },
                child: Center(child: Text("Provider"))),
            RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/inherited");
                },
                child: Center(child: Text("Inherited")))
          ],
        ),
      ),
    );
  }
}
