import 'package:ask_before/ui/responsive/mobile_view.dart';
import 'package:ask_before/ui/responsive/web_view.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 690) {
              return MobileView();
            } else if (constraints.maxWidth < 960) {
              return Webview();
            } else {
              return Webview();
            }
          },
        ),
      ),
    );
  }
}
