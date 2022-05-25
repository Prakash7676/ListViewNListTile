import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  static String routeName = '/faq-page';
  const FAQPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ Page'),
      ),
    );
  }
}
