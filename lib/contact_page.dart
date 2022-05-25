import 'package:flutter/material.dart';
import 'package:todoapp1/model/contact.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  static String routeName = '/contact-page';
  const ContactPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Page'),
        actions: [
          IconButton(
              onPressed: () {
                launch("https://www.google.com.np");
              },
              icon: Icon(Icons.web))
        ],
      ),
      body: ListView.builder(
          itemCount: listContact.length,
          itemBuilder: (BuildContext context, i) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text(listContact[i].name),
              subtitle: Text(listContact[i].phone),
              trailing: IconButton(
                icon: Icon(Icons.phone),
                onPressed: () {
                  launch("	tel:+977${listContact[i].phone}");
                },
              ),
            );
          }),
    );
  }
}
