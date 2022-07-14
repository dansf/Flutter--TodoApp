import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  const PageContainer({Key? key, required this.widgetPage}) : super(key: key);

  final Widget widgetPage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: widgetPage,
    );
  }
}
