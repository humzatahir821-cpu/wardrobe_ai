import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wardrobe AI (Demo)',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wardrobe AI')),
      body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
        const Text('This is a demo starter app for Wardrobe AI.'),
        const SizedBox(height:12),
        ElevatedButton(onPressed: () => showDialog(context: context, builder: (_) => AlertDialog(title: const Text('Demo'), content: const Text('Scan & affiliate features will be added later.'), actions: [TextButton(onPressed: ()=>Navigator.pop(context), child: const Text('OK'))])), child: const Text('Demo'))
      ])),
    );
  }
}
