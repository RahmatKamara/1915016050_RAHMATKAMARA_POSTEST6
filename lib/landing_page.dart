// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    title: 'E-Voting',
    home: LandingPage(),
  ));
}

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  get textButton => null;

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
        title: Text('POSTTEST6 RAHMAT KAMARA'),
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color.fromARGB(255, 25, 245, 5), Colors.blue]),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              Text(
                'Selamat Datang \n\n Di Aplikasi \n\n E-Voting',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
              SizedBox(height: 20),
              greenContainer1('assets/orang2.png'),
              SizedBox(height: 40),
              // // greenContainer1('assets/orang3.png'),
              // // SizedBox(height: 20),
              // greenContainer1('assets/orang4.png'),
              // SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text('   Next =>   '),
              ),
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
