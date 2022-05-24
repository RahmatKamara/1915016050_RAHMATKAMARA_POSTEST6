// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '2kandidat.dart';
import '3kandidat.dart';
import '4kandidat.dart';
import 'details_page.dart';
import 'form_page.dart';
import 'landing_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget greenContainer1(b) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(b),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color.fromARGB(255, 25, 245, 5), Colors.blue]),
          ),
        ),
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              final snackBar = SnackBar(
                content: const Text('Tekan pada gambar/kolom gambar!'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              );
              // Find the ScaffoldMessenger in the widget tree
              // and use it to show a SnackBar.
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }, // Handle your callback
            child: Ink(
                child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  '2 Kandidat',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Vote2()));
                  },
                  child: Column(children: [
                    SizedBox(height: 20),
                    greenContainer1('assets/orang2.png'),
                  ]),
                ),
                SizedBox(height: 20),
                Text('3 Kandidat',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Vote3()));
                  },
                  child: Column(children: [
                    SizedBox(height: 20),
                    greenContainer1('assets/orang3.png'),
                  ]),
                ),
                SizedBox(height: 20),
                Text('4 Kandidat',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Vote4()));
                  },
                  child: Column(children: [
                    SizedBox(height: 20),
                    greenContainer1('assets/orang4.png'),
                  ]),
                ),
                SizedBox(height: 20),
              ],
            )),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color.fromARGB(255, 25, 245, 5),
                      Colors.blue
                    ]),
              ),
              child: Text(
                'MENU',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
            ),
            ListTile(
              title: Text('Form Komitmen'),
              leading: Icon(Icons.list),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => FormKomitmen()));
              },
            ),
            ListTile(
              title: Text('Landing Page'),
              leading: Icon(Icons.app_registration),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LandingPage()));
              },
            ),
            ListTile(
              title: Text('Details Page'),
              leading: Icon(Icons.details),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement<void, void>(context,
                    MaterialPageRoute(builder: (context) => DetailsPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
