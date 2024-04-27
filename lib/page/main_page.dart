// ignore_for_file: depend_on_referenced_packages, library_private_types_in_public_api

import 'package:bacaan_sholat/page/bacaan_sholat_page.dart';
import 'package:bacaan_sholat/page/niat_sholat_page.dart';
import 'package:flutter/material.dart';

import 'ayat_kursi_page.dart';

class MainPage extends StatefulWidget {
  // ignore: use_super_parameters
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 176, 255),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Expanded(
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              // ignore: prefer_const_constructors
                              builder: (context) => NiatSholat()));
                    },
                    child: const Column(
                      children: [
                        Image(
                          image: AssetImage("assets/images/ic_niat.png"),
                          height: 140,
                          width: 140,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Niat Sholat",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                margin: const EdgeInsets.all(10),
                child: Expanded(
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              // ignore: prefer_const_constructors
                              builder: (context) => BacaanSholat()));
                    },
                    child: const Column(
                      children: [
                        Image(
                          image: AssetImage("assets/images/ic_doa.png"),
                          height: 140,
                          width: 140,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Bacaan Sholat",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                margin: const EdgeInsets.all(10),
                child: Expanded(
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(context,
                          // ignore: prefer_const_constructors
                          MaterialPageRoute(builder: (context) => AyatKursi()));
                    },
                    child: const Column(
                      children: [
                        Image(
                          image: AssetImage("assets/images/ic_bacaan.png"),
                          height: 140,
                          width: 140,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Ayat Kursi",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}