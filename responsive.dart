import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget? mobileWidget;
  final Widget tabletWidget;
  final Widget? webWidget;

  const Responsive({
    Key? key,
    required this.mobileWidget,
    this.tabletWidget,
    this.webWidget,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 1200) {
          return webWidget?? mobileWidget;
        } else if (constraints.maxWidth >=800){
            return tabletWidget ?? mobileWidget;
        }
        else {
          return mobileWidget;
        }
      },
    );
  }
}