import 'package:flutter/material.dart';
import 'package:todoapp1/model/todo.dart';
import 'service_page.dart';

import 'about_page.dart';
import 'contact_page.dart';
import 'faq_page.dart';

class HomePage extends StatelessWidget {
  static String routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
        backgroundColor: Colors.deepOrange,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                  Colors.deepOrange,
                  Colors.orangeAccent
                ])),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("img/prp.png"),
                  radius: 10,
                ),
                accountName: Text("Prakash Shrestha"),
                accountEmail: Text("Shresthap125@gmail.com")),
            ListTile(
              leading: const Icon(
                Icons.home,
                size: 35,
                color: Colors.pink,
              ),
              title: const Text("Homepage"),
              subtitle: const Text("Visit Homepage"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.contact_mail,
                size: 35,
                color: Colors.pink,
              ),
              title: const Text("Contact Page"),
              subtitle: const Text("Visit Contact Page"),
              onTap: () {
                Navigator.pushNamed(context, ContactPage.routeName);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.book,
                size: 35,
                color: Colors.pink,
              ),
              title: const Text("About Page"),
              subtitle: const Text("Visit About Page"),
              onTap: () {
                Navigator.pushNamed(context, AboutPage.routeName);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.design_services,
                size: 35,
                color: Colors.pink,
              ),
              title: const Text("Service Page"),
              subtitle: const Text("Visit Service Page"),
              onTap: () {
                Navigator.pushNamed(context, ServicePage.routeName);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.question_answer,
                size: 35,
                color: Colors.pink,
              ),
              title: const Text("FAQ Page"),
              subtitle: const Text("Visit FAQ Page"),
              onTap: () {
                Navigator.pushNamed(context, FAQPage.routeName);
              },
            ),
            const Divider(
              color: Colors.red,
              thickness: 1.0,
            ),
            ListTile(
              leading: Icon(Icons.close),
              title: Text("Close"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: listofTodo.length,
          itemBuilder: (ctx, i) {
            return ListTile(
              title: Text(listofTodo[i].title),
              subtitle: Text(listofTodo[i].subtitle),
              leading: listofTodo[i].hasicon
                  ? listofTodo[i].icon
                  : Icon(Icons.abc_outlined),
            );
          }),
    );
  }
}
