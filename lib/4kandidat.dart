// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016050_rahmatkamara/count_controller.dart';

class Vote4 extends StatefulWidget {
  const Vote4({Key? key}) : super(key: key);

  @override
  State<Vote4> createState() => _Vote4State();
}

class _Vote4State extends State<Vote4> {
  String namaKandidat = '',
      namaKandidat2 = '',
      namaKandidat3 = '',
      namaKandidat4 = '';
  final ctrlNamaKandidat = TextEditingController();
  final ctrlNamaKandidat2 = TextEditingController();
  final ctrlNamaKandidat3 = TextEditingController();
  final ctrlNamaKandidat4 = TextEditingController();
  final CountController countC = Get.put(CountController());

  @override
  void dispose() {
    ctrlNamaKandidat.dispose();
    ctrlNamaKandidat2.dispose();
    ctrlNamaKandidat3.dispose();
    ctrlNamaKandidat4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VOTE 4 KANDIDAT'),
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
              TextField(
                controller: ctrlNamaKandidat,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Isi Nama Kandidat",
                    labelText: "Nama Kandidat 1"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      namaKandidat = ctrlNamaKandidat.text;
                    });
                  },
                  child: Text('Tampilkan')),
              SizedBox(height: 20),
              Text(
                '$namaKandidat',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 20),
              GetBuilder<CountController>(builder: (_) {
                return Text(
                  'Total Suara : ${_.count1}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                );
              }),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width / 2.7),
                  FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                      countC.increment1();
                    },
                  ),
                  SizedBox(width: 20),
                  FloatingActionButton(
                    child: Icon(Icons.remove),
                    onPressed: () {
                      countC.decrase1();
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                controller: ctrlNamaKandidat2,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Isi Nama Kandidat",
                    labelText: "Nama Kandidat 2"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      namaKandidat2 = ctrlNamaKandidat2.text;
                    });
                  },
                  child: Text('Tampilkan')),
              SizedBox(height: 20),
              Text(
                '$namaKandidat2',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 20),
              GetBuilder<CountController>(builder: (_) {
                return Text(
                  'Total Suara : ${_.count2}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                );
              }),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width / 2.7),
                  FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                      countC.increment2();
                    },
                  ),
                  SizedBox(width: 20),
                  FloatingActionButton(
                    child: Icon(Icons.remove),
                    onPressed: () {
                      countC.decrase2();
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                controller: ctrlNamaKandidat3,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Isi Nama Kandidat",
                    labelText: "Nama Kandidat 3"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      namaKandidat3 = ctrlNamaKandidat3.text;
                    });
                  },
                  child: Text('Tampilkan')),
              SizedBox(height: 20),
              Text(
                '$namaKandidat3',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 20),
              GetBuilder<CountController>(builder: (_) {
                return Text(
                  'Total Suara : ${_.count3}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                );
              }),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width / 2.7),
                  FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                      countC.increment3();
                    },
                  ),
                  SizedBox(width: 20),
                  FloatingActionButton(
                    child: Icon(Icons.remove),
                    onPressed: () {
                      countC.decrase3();
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                controller: ctrlNamaKandidat4,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Isi Nama Kandidat",
                    labelText: "Nama Kandidat 4"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      namaKandidat4 = ctrlNamaKandidat4.text;
                    });
                  },
                  child: Text('Tampilkan')),
              SizedBox(height: 20),
              Text(
                '$namaKandidat4',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 20),
              GetBuilder<CountController>(builder: (_) {
                return Text(
                  'Total Suara : ${_.count4}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                );
              }),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width / 2.7),
                  FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                      countC.increment4();
                    },
                  ),
                  SizedBox(width: 20),
                  FloatingActionButton(
                    child: Icon(Icons.remove),
                    onPressed: () {
                      countC.decrase4();
                    },
                  ),
                ],
              ),
              SizedBox(width: 20),
            ],
          ),
        ],
      ),
    );
  }
}
