// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'home.dart';

// class DetailsPage extends StatefulWidget {
//   const DetailsPage({Key? key}) : super(key: key);

//   @override
//   State<DetailsPage> createState() => _DetailsPageState();
// }

class DetailsPage extends StatelessWidget {
  DetailsPage({Key? key}) : super(key: key);
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
        title: Text('DETAILS PAGE'),
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
                'Penjelasan Aplikasi E-Voting \n',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
              Text(
                'Aplikasi E-Voting adalah aplikasi yang memudahkan pengguna untuk melakukan voting atau pemungutan suara. Selain digunakan untuk personal, aplikasi ini juga dapat digunakan disebuah komunitas atau organisasi lainnya. Dengan berbagai fitur yang ada memudahkan pengguna melakukan voting secara cepat, tepat, dan kapan saja serta dimana saja.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              greenContainer1('assets/E-Voting.png'),
              SizedBox(height: 40),
              // // greenContainer1('assets/orang3.png'),
              // // SizedBox(height: 20),
              // greenContainer1('assets/orang4.png'),
              // SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text('  <= Home   '),
              ),
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
