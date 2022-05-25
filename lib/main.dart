import 'package:flutter/material.dart';
import 'service_page.dart';

import 'about_page.dart';
import 'contact_page.dart';
import 'faq_page.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Todo App",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        ContactPage.routeName: (context) => const ContactPage(),
        AboutPage.routeName: (context) => AboutPage(),
        ServicePage.routeName: (context) => const ServicePage(),
        FAQPage.routeName: (context) => const FAQPage(),
      },
    );
  }
}
