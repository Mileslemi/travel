class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel(
      {required this.address,
      required this.imageUrl,
      required this.name,
      required this.price});
}

final List<Hotel> hotels = [
  Hotel(
      address: '404 Great St',
      imageUrl: 'assets/images/hotel0.jpg',
      name: 'Casanova',
      price: 175),
  Hotel(
      address: '404 Great St',
      imageUrl: 'assets/images/hotel1.jpg',
      name: 'Nyali Beach',
      price: 240),
  Hotel(
      address: '404 Great St',
      imageUrl: 'assets/images/hotel2.jpg',
      name: 'Villarosa Kempinski',
      price: 300)
];
