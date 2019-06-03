import 'package:flutter/material.dart';
import 'package:flutter_youtube_search_bloc/ui/search/search_page.dart';
import 'package:flutter_youtube_search_bloc/injection_container.dart';

void main() {
  initKiwi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube Search',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        accentColor: Colors.redAccent
      ),
      home: SearchPage() ,
    );
  }
}
