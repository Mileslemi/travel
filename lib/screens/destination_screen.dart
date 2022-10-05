// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel/models/activity_model.dart';
import 'package:travel/models/destination_model.dart';

class DestinationScreen extends StatelessWidget {
  final Destination destination;

  DestinationScreen(this.destination);

  Text _buildRating(int value) {
    var stars = '';
    for (var i = 0; i < value; i++) {
      stars += '⭐';
    }
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0.0, 2.0),
                      color: Colors.black38,
                      blurRadius: 6.0,
                    )
                  ],
                ),
                child: Hero(
                  tag: destination.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image(
                      image: AssetImage(destination.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 30.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 35.0,
                      color: Colors.black,
                      onPressed: () => Navigator.pop(context),
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(
                          Icons.search,
                          size: 35.0,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          FontAwesomeIcons.sortAmountDownAlt,
                          size: 30.0,
                          color: Colors.black,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      destination.city,
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.4,
                        fontWeight: FontWeight.w600,
                        fontSize: 22.0,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 15.0,
                          color: Colors.white70,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          destination.country,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 20,
                child: Icon(
                  Icons.location_on,
                  size: 25.0,
                  color: Colors.white70,
                ),
              )
            ],
          ),
          Expanded(
            //Using an Expanded widget makes a child of a Row, Column, or Flex
            // expand to fill the available space along the main axis
            //e.g., horizontally for a Row
            child: ListView.builder(
                padding: EdgeInsets.only(
                  top: 10.0,
                  bottom: 15.0,
                ),
                itemCount: destination.activities.length,
                itemBuilder: (BuildContext context, int ixdex) {
                  Activity activity = activities[ixdex];
                  return Stack(
                    children: [
                      Container(
                        height: 160.0,
                        width: double.infinity,
                        margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 100.0,
                            right: 20.0,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // ignore: sized_box_for_whitespace
                                  Container(
                                    width: 120.0,
                                    child: Text(
                                      activity.name,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  // ignore: prefer_const_literals_to_create_immutables
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '\$${activity.price}',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        'Per Par',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Text(
                                activity.type,
                                style: TextStyle(color: Colors.grey),
                              ),
                              _buildRating(activity.rating),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color:
                                          Theme.of(context).primaryColorLight,
                                    ),
                                    child: Text(
                                      activity.startTimes[0],
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color:
                                          Theme.of(context).primaryColorLight,
                                    ),
                                    child: Text(
                                      activity.startTimes[1],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15.0,
                        left: 13.0,
                        bottom: 15.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image(
                            image: AssetImage(activity.imageUrl),
                            width: 110.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
