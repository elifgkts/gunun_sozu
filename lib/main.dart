

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: "Günün Sözü"),
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


  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;



    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top:ekranYuksekligi/10,bottom:ekranYuksekligi/10),
              child: SizedBox(
                  width: ekranGenisligi/2,
                  child: Image.asset("resimler/mochi-peachcat-mochi.gif")
              ),
            ),


            Text("Anlamak masraflı iştir.\nEmek ister, gayret ister, samimiyet ister.\nYanlış anlamak kolaydır oysa.\nBiraz kötü niyet, biraz da cahillik kâfidir...",
              style:TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
                fontSize: ekranGenisligi/25,
              ),
            ),

            Padding(
              padding:EdgeInsets.only(left:ekranGenisligi/100, right:ekranGenisligi/100),
              child: Text("Sezai Karakoç",
              textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: ekranGenisligi/25,
                )
                ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom:ekranYuksekligi/10),
              child: ElevatedButton(
                child: const Text('TAMAM'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.black38,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            )

          ],
        ),
      ),


    );
  }
}
