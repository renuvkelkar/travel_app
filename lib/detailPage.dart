import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/model.dart';

class DetailPage extends StatefulWidget {
  final Data city;
  DetailPage({required this.city});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.red.shade800,
        appBar: AppBar(
          backgroundColor: Colors.red.shade800,
          title: Text(widget.city.cityName.toString()),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag:widget.city.cityName.toString() ,
              child: Image.network(
                widget.city.cityImage.toString(),
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Popular Places",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.city.cityplaces.length,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(widget
                                .city.cityplaces[index].placeImage
                                .toString()),
                            radius: 40,
                          ),
                          Text(
                            widget.city.cityplaces[index].placeName,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                               ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Information",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget
                  .city.cityInfo.toString(),style: TextStyle(color: Colors.white,fontSize: 18),),
            )
          ],
        ));
  }
}
