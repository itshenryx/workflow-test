import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:test_project/QuoteBox.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://dpiubzrgjsjxtplyppsl.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRwaXVienJnanNqeHRwbHlwcHNsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDQ4OTUwNzksImV4cCI6MjAyMDQ3MTA3OX0.AUhcY3Xn6oiywoG5PbUBaL4nVj6Fc3ljTAIPUrypFxY',
  );
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Test"), backgroundColor: Colors.blueGrey),
      body: Container(
        child: const Quotes(),
      ),
    );
  }
}

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _Quotes();
}

class _Quotes extends State<Quotes> {
  List<String> list = [
    "This is the first quote",
    "This is the second quote",
    "This is the third quote, and this is longer than the other quotes just "
       "to test the warping and breaking functionality of the Text() widget",
    "This is the fourth quote",
    "This is the fourth quote",
    "This is the fourth quote",
    "This is the fourth quote",
    "This is the fourth quote",
    "This is the fourth quote",
    "This is the fourth quote",
  ];

  @override
  Widget build(BuildContext context) {
    void deleteQuote(String value) {
      setState(() {
        list.remove(value);
      });
    }

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView(
          children: list
              .map((data) => QuoteBox(data: data, deleteFunction: deleteQuote))
              .toList(),
        ),
    );
  }
}
