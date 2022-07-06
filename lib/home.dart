// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final AsyncSnapshot<QuerySnapshot> snapshot;
  const Home(param0, {Key? key, required this.snapshot}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          'Home',
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}
