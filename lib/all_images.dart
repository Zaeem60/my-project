import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AllImages extends StatefulWidget {
  final AsyncSnapshot<QuerySnapshot> snapshot;
  const AllImages(param0, {Key? key, required this.snapshot}) : super(key: key);

  @override
  State<AllImages> createState() => _AllImagesState();
}

class _AllImagesState extends State<AllImages> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: Widget.snapshot.data?.docs.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: GridTile(
            child: CachedNetworkImage(
              imageUrl: Widget.snapshot.data?.docs.elementAt(index)['url'],
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
    );
  }
}
