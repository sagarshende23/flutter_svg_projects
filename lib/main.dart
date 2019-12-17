import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String assetName = 'assets/Firefox_Logo.svg';
    final String svgNetworkUrl =
        'https://upload.wikimedia.org/wikipedia/commons/1/17/Yin_yang.svg';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SVG Example'),
      ),
      body: Center(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('SVG assets file'),
            SvgPicture.asset(
              assetName,
              height: 300,
            ),
            SizedBox(height: 30.0,),
            Text('SVG Network File'),
            SvgPicture.network(
              svgNetworkUrl,
              height: 250,
              placeholderBuilder: (context) => CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
