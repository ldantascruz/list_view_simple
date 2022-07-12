import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final list = <String>[];

  void addLembrete(String value) {
    list.add(value);
    setState(() {});
  }

  void removeLembrete(String value) {
    list.remove(value);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: list
            .map(
              (e) => ListTile(
                  title: Text(
                    e,
                    style: TextStyle(fontSize: 26),
                  ),
                  onTap: () {
                    removeLembrete(e); 
                  }),
            )
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addLembrete('Estudar');
        },
      ),
    );
  }
}
