
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class wattsapp extends StatefulWidget {
  static const String id = "wattsapp";
  const wattsapp({super.key});

  @override
  State<wattsapp> createState() => _wattsappState();
}

class _wattsappState extends State<wattsapp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WattsApp"),
            backgroundColor: Colors.teal,
          ),
        ));
  }
}
