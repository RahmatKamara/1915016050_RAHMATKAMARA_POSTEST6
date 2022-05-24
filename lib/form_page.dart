// ignore_for_file: constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'checkbox_ctrl.dart';
import 'home.dart';
import 'text_ctrl.dart';

// class FormPage extends StatefulWidget {
//   const FormPage({Key? key}) : super(key: key);

//   @override
//   State<FormPage> createState() => _FormPageState();
// }

enum Gender { Unknown, Cowok, Cewek }

class FormKomitmen extends StatelessWidget {
  FormKomitmen({Key? key}) : super(key: key);
  // bool isSedia = false;
  // Gender gender = Gender.Unknown;
  // String namaDepan = '', namaBelakang = '', asalInstansi = '';
  // final ctrlAsalInstansi = TextEditingController();
  // final ctrlNamaDepan = TextEditingController();
  // final ctrlNamaBelakang = TextEditingController();

  final TextController tc = Get.put(TextController());
  // final CheckboxController cc = Get.put(CheckboxController());

  // @override
  // void dispose() {
  //   ctrlNamaDepan.dispose();
  //   ctrlNamaBelakang.dispose();
  //   super.dispose();
  // }

  // String getGender(Gender value) {
  //   if (value == Gender.Cowok) {
  //     return 'Cowok';
  //   } else if (value == Gender.Cewek) {
  //     return 'Cewek';
  //   }
  //   return 'Unknown*';
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FORM KOMITMEN'),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                'Pada form ini, pengguna diwajibkan mengisi data yang ada sesuai dengan aslinya. Pemalsuan data diri dapat dihukum dengan hukuman berat sesuai dengan ketentuan yang berlaku. ',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              // Text('Nama Lengkap  : ${tc.namaDepan} ${tc.namaBelakang}'),
              // SizedBox(height: 20),
              // Text('Jenis Kelamin : ${getGender(gender)}'),
              // SizedBox(height: 20),
              // Text('Asal Instansi  : ${tc.asalInstansi}'),
              // SizedBox(height: 20),
              // Text('Saya ${cc.isSedia.value ? "Bersedia" : "Tidak Bersedia*"}'),
              // SizedBox(height: 20),
              TextField(
                controller: tc.namaDepanCtrl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Isi Nama Depan",
                    labelText: "Nama Depan"),
              ),
              SizedBox(height: 20),
              TextField(
                controller: tc.namaBelakangCtrl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Isi Nama Belakang",
                    labelText: "Nama Belakang"),
              ),
              SizedBox(height: 20),
              TextField(
                controller: tc.asalInstansiCtrl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Isi Asal Instansi",
                    labelText: "Asal Instansi"),
              ),
              SizedBox(height: 20),
              // ListTile(
              //   title: Text('Unknown'),
              //   leading: Radio(
              //     groupValue: gender,
              //     value: Gender.Unknown,
              //     onChanged: (Gender? value) {
              //       setState(() {
              //         gender = value!;
              //       });
              //     },
              //   ),
              // ),
              // ListTile(
              //   title: Text('Cowok'),
              //   leading: Radio(
              //     groupValue: gender,
              //     value: Gender.Cowok,
              //     onChanged: (Gender? value) {
              //       setState(() {
              //         gender = value!;
              //       });
              //     },
              //   ),
              // ),
              // ListTile(
              //   title: Text('Cewek'),
              //   leading: Radio(
              //     groupValue: gender,
              //     value: Gender.Cewek,
              //     onChanged: (Gender? value) {
              //       setState(() {
              //         gender = value!;
              //       });
              //     },
              //   ),
              // ),
              // ListTile(
              //   title: Text('Bersedia Mengikuti Aturan yang Berlaku?'),
              //   leading: Obx(
              //     () => Checkbox(
              //       onChanged: cc.onChanged,
              //       value: cc.isSedia.value,
              //     ),
              //   ),
              // ),
              ElevatedButton(onPressed: tc.onPressed, child: Text('Submit')),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LembarKomitmen(),
                    ),
                  );
                },
                child: Text('Lembar Komitmen'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class LembarKomitmen extends StatelessWidget {
  LembarKomitmen({Key? key}) : super(key: key);

  final TextController tc = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LEMBAR KOMITMEN'),
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
      body: Center(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        child: Column(children: [
          SizedBox(height: 40),
          Text(
            'Dengan Ini, Saya ${tc.namaDepan} ${tc.namaBelakang}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            'Dari ${tc.asalInstansi}',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            'Menyatakan Bersedia Mematuhi Aturan Yang Berlaku',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 100,
          ),
          Text('Tertanda,'),
          SizedBox(
            height: 50,
          ),
          Text('${tc.namaDepan} ${tc.namaBelakang}'),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            child: Text('  <= Home   '),
          ),
          SizedBox(height: 20),
        ]),
      ),
    );
  }
}
