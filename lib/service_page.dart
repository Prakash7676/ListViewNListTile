import 'package:flutter/material.dart';

class ServicePage extends StatelessWidget {
  static String routeName = '/service-page';
  const ServicePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Page'),
      ),
    );
  }
}
