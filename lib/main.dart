

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter  Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int sayac = 0;

  @override
  Widget build(BuildContext context) {
    var cihazbilgisi = MediaQuery.of(context);
    double genislik = cihazbilgisi.size.width;
    double yukseklik = cihazbilgisi.size.height;

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.deepOrange,
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: genislik,
              height: yukseklik /5,
              color: Colors.lightBlue,
              child: FloatingActionButton(
                backgroundColor: Colors.red,
                onPressed: () {
                  setState(() {
                    sayac = sayac + 1;
                  });
                },
                child: Text('Arttır'),
                ),
              ),


            Container(
              width: genislik,
              height: yukseklik / 5,
              color: Colors.red,
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    sayac = 0;
                  });
                },
                child: Text('Sayacı Sıfırla'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Sayaç: $sayac",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: yukseklik / 20,
                  backgroundColor: Colors.lightGreen,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
