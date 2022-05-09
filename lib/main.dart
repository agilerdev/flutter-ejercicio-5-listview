import 'package:flutter/material.dart';

import 'package:cartoons_flutter/model/characters_data.dart';
import 'package:cartoons_flutter/widgets/character_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final List<Widget> widgets = List.generate(characters.length, (index) {
    return CharacterWidget(character: characters[index]);
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cartoooooonery'),
      ),
      body: ListView(
        children: widgets,
      ),
    );
  }
}
