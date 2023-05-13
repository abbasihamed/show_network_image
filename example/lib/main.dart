import 'package:flutter/material.dart';
import 'package:show_network_image/show_network_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 200,
              width: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: const ShowNetworkImage(
                  imageSrc:
                      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh3QCRzKMKYOH5-VALcnTfMD_xclnCTXS5z1SBMTGkYkGJYKGnjb-9trbxaPN2pn4kInp9Bcn4Uti1Cs65Kv9bKtNnjLBNEsdz3Hivryd2aLuWzTx9Uy2Jmv_0MbhkKQjNT0fuGcSFXfXzg2S1Icl1aaNe73ReuFaOSbjcJubK2n7mWk3TvyLSVhW9l/s1600/mavi1.png',
                  mobileBoxFit: BoxFit.fill,
                  mobileHeight: 300,
                  mobileWidth: 300,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
