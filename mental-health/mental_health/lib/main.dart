// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'songs_page.dart'; // Import the newly created page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  late String _quote;

  @override
  void initState() {
    super.initState();
    _fetchQuote();
  }

  Future<void> _fetchQuote() async {
    final response =
        await http.get(Uri.parse('https://api.quotable.io/random?tags=motivational'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        _quote = data['content'];
      });
    } else {
      throw Exception('Failed to fetch quote');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motivational Quotes',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Motivational Quotes'),
        ),
        body: Center(
          child: _quote == null
              ? const CircularProgressIndicator()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _quote,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 24),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: _fetchQuote,
                      child: const Text('Next Quote'),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SongsPage()), // navigate to the songs page
                        );
                      },
                      child: const Text('Go to Songs Page'),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
