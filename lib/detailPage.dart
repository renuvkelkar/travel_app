import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/model.dart';

class DetailPage extends StatefulWidget {
  final Data city;
  DetailPage({  required this.city});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade800,
      title: Text(widget.city.cityName.toString()),

    ),
      body: Image.network(widget.city.cityImage.toString()),
    );
  }
}
