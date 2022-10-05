// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel/models/hotel_model.dart';

class HotelCorousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Exclusive Hotels',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  letterSpacing: 1.5,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  letterSpacing: 1.0,
                ),
              ),
            ],
          ),
        ),
        // ignore: sized_box_for_whitespace
        Container(
          height: 360,
          //color: Colors.blue,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotels.length,
            itemBuilder: (BuildContext context, int index) {
              Hotel hotel = hotels[index];
              return Container(
                width: 310.0,
                //color: Colors.red,
                margin: EdgeInsets.all(10.0),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                      bottom: 15.0,
                      child: Container(
                        height: 120,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                hotel.name,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.2,
                                ),
                              ),
                              SizedBox(height: 2.0),
                              Text(
                                hotel.address,
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(height: 2.0),
                              Text(
                                "Price \$${hotel.price} / night",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(1.0, 2.0),
                            blurRadius: 10.0,
                          )
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          image: AssetImage(hotel.imageUrl),
                          width: 270.0,
                          height: 250.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
