// ignore_for_file: avoid_unnecessary_containers, library_private_types_in_public_api

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  final AsyncSnapshot<QuerySnapshot> snapshot;
  const Favorite(param0, {Key? key, required this.snapshot}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
        child: Text(
          'Favorite',
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    );
  }
}
