import 'package:flutter/material.dart';
import 'package:linux_try/providers/details_provider.dart';
import 'package:linux_try/providers/download_provider.dart';
import 'package:linux_try/screens/home/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Origin Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => DownloadProvider()),
          ChangeNotifierProvider(create: (context) => DetailsProvider()),
        ],
        child: Homepage(),
      ),
    );
  }
}
