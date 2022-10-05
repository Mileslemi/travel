import 'package:travel/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination(
      {required this.activities,
      required this.city,
      required this.country,
      required this.description,
      required this.imageUrl});
}

List<Activity> activities = [
  Activity(
      imageUrl: 'assets/images/stmarksbasilica.jpg',
      name: 'St. Mark\' Basilica',
      type: 'Sightseeing Tour',
      startTimes: ['9:00 am', '11:00 am'],
      rating: 5,
      price: 30),
  Activity(
      imageUrl: 'assets/images/gondola.jpg',
      name: 'Walking Tour and Gonadola Ride',
      type: 'Sightseeing Tour',
      startTimes: ['11:00 am', '1:00 pm'],
      rating: 4,
      price: 210),
  Activity(
      imageUrl: 'assets/images/murano.jpg',
      name: 'Murano and Burano Tour',
      type: 'Sightseeing Tour',
      startTimes: ['12:30 pm', '2:00 pm'],
      rating: 3,
      price: 125),
];

List<Destination> destinations = [
  Destination(
      activities: activities,
      city: 'Venice',
      country: 'Italy',
      description: 'Visit Venice for an amazing and unforgettable adventure.',
      imageUrl: 'assets/images/venice.jpg'),
  Destination(
      activities: activities,
      city: 'Paris',
      country: 'France',
      description: 'Visit Paris for an amazing and unforgettable adventure.',
      imageUrl: 'assets/images/paris.jpg'),
  Destination(
      activities: activities,
      city: 'New Delhi',
      country: 'India',
      description:
          'Visit New Delhi for an amazing and unforgettable adventure.',
      imageUrl: 'assets/images/newdelhi.jpg'),
  Destination(
      activities: activities,
      city: 'New York',
      country: 'U.S.A',
      description: 'Visit New York for an amazing and unforgettable adventure.',
      imageUrl: 'assets/images/newyork.jpg'),
  Destination(
      activities: activities,
      city: 'Sao Paulo',
      country: 'Brazil',
      description:
          'Visit Sao Paulo for an amazing and unforgettable adventure.',
      imageUrl: 'assets/images/saopaulo.jpg'),
];
