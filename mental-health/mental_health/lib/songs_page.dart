import 'package:flutter/material.dart';

class SongsPage extends StatelessWidget {
  const SongsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Songs'),
      ),
      body: const Center(
        child: Text('This is the Songs page'),
      ),
    );
  }
}
