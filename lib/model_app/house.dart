class House {
  bool isFav;
  final String imagePath;
  final List<String> morImgesUrl;

  double price;
  String address;
  int bedroom;
  int bathroom;
  int garages;
  int livingroom;
  //int Guestsroom;
  int kitchen;
  String description;
  double sqfeet;
  DateTime time;

  House({
    required this.imagePath,
    required this.morImgesUrl,
    this.isFav = false,
    required this.price,
    required this.address,
    required this.bedroom,
    required this.bathroom,
    required this.garages,
    required this.livingroom,
    // required this.Guestsroom,
    required this.kitchen,
    required this.description,
    required this.sqfeet,
    required this.time,
  });
  bool get favorite => isFav;
  set favorite(bool value) => isFav = value;

  double get housePrice => price;
  set housePrice(double value) => price = value;

  String get houseAddress => address;
  set houseAddress(String value) => address = value;

  int get numberOfBedrooms => bedroom;
  set numberOfBedrooms(int value) => bedroom = value;

  int get numberOfBathrooms => bathroom;
  set numberOfBathrooms(int value) => bathroom = value;

  int get numberOfGarages => garages;
  set numberOfGarages(int value) => garages = value;

  int get numberOfLivingRooms => livingroom;
  set numberOfLivingRooms(int value) => livingroom = value;

  int get numberOfKitchens => kitchen;
  set numberOfKitchens(int value) => kitchen = value;

  String get houseDescription => description;
  set houseDescription(String value) => description = value;

  double get houseSqFeet => sqfeet;
  set houseSqFeet(double value) => sqfeet = value;

  DateTime get houseTime => time;
  set houseTime(DateTime value) => time = value;
}

List<House> houseList = [
  House(
    imagePath: 'assets/images/home_1.jpg',
    morImgesUrl: [
      'assets/images/home_1.jpg',
      'assets/images/home_2.jpg',
      'assets/images/home_3.jpg',
      'assets/images/home_4.jpg',
      'assets/images/home_5.jpg',
      'assets/images/home_6.jpg',
      'assets/images/home_7.jpg',
    ],
    price: 275000,
    address: 'Al-Andalus neighborhood',
    bedroom: 3,
    bathroom: 2,
    garages: 1,
    livingroom: 1,
    //  Guestsroom: 1,
    kitchen: 2,
    description: '''
      the description

Peace and mercy of God

At a price of 275 thousand

Villa in Si Khalifa area, Al-Andalus district.

Directly opposite the mosque and the new school.

The land belongs to us, thank God

500 meters on two streets, 15 meters long) The villa’s roof is 160 metres

3 bedrooms

Hall



Salon with private bathroom for guests, separate entrance.

kitchen

2 bathrooms

Chat

The entire construction conformed to engineering specifications through an engineering company

The villa was completely finished in 2022, and even the outer wall is concrete, and it has hidden lighting, all of which is powered by a photovoltaic cell. Green spaces, water well, sewage tank

The ceiling is mulberry

It has a store that can be opened or rented

As a monthly investment income. It has new furniture consisting of
Hall

275 dinars

500 square meters. 160 square meters. 3

09311780XX

**"0%

Chat

Salon with private bathroom for guests, separate entrance.

kitchen

2 bathrooms

The entire construction was according to engineering specifications by a company

Geometric

The villa is fully finished in 2022

Even the outer wall is concrete

It has hidden lighting, all of which is powered by a photocell.

Green spaces

a well

Drainage tank

The ceiling is mulberry

It has a store that can be opened or rented

As a monthly investment income. It has new furniture consisting of

2 salon

Eating table

2 large buffet

1 air conditioner

3 heater

New, never lived in.

You have the specifications, you have the price, the sale is affordable, and thank God for the blessing

And the allowance is no
    ''',
    sqfeet: 500,
    time: DateTime(2024, 1, 28),
  ),
  House(
    imagePath: 'assets/images/home_8.jpg',
    morImgesUrl: [
      'assets/images/home_8.jpg',
      'assets/images/home_9.jpg',
      'assets/images/home_10.jpg',
      'assets/images/home_11.jpg',
      'assets/images/home_12.jpg',
      'assets/images/home_13.jpg',
      'assets/images/home_14.jpg',
      'assets/images/home_15.jpg',
      'assets/images/home_16.jpg',
      'assets/images/home_17.jpg',
      'assets/images/home_18.jpg',
      'assets/images/home_19.jpg',
      'assets/images/home_20.jpg',
      'assets/images/home_21.jpg',
      'assets/images/home_22.jpg',
      'assets/images/home_23.jpg',
      'assets/images/home_24.jpg',
      'assets/images/home_25.jpg',
      'assets/images/home_26.jpg',
      'assets/images/home_27.jpg',
      'assets/images/home_28.jpg',
    ],
    price: 2500000,
    address: 'Salahaddin',
    bedroom: 5,
    bathroom: 4,
    garages: 2,
    livingroom: 2,
    //Guestsroom: 2,
    kitchen: 2,
    description: '''
      the description






The offer is for sale: a two-storey residential villa and an annex for sale in Al-Sarraj, with beautiful and sophisticated finishing

Newly finished villa, address: Al-Sarraj, Al-Mashtal Island, near Belqis Hammam

Land area: 250 m

Total roof area: 600 m

The first floor consists of:

Men's reception salon + bathroom

Women's reception hall

Bathroom - kitchen - living hall.. A basement with a bathroom and a hall

The second floor consists of: master bedroom + bathroom, living hall - bathroom, service kitchen, 2 bedrooms

The supplement consists of:

Bedrooms

bathroom

kitchen

Villa benefits:

Water well

16th Street, M. Tar

Modern residential partition, elevator, swimming pool, basement

Selling price: 2 million 500 for serious buyers only.
    ''',
    sqfeet: 500,
    time: DateTime(2024, 1, 27),
  ),
  House(
    imagePath: 'assets/images/home_29.jpg',
    morImgesUrl: [
      'assets/images/home_29.jpg',
      'assets/images/home_30.jpg',
      'assets/images/home_31.jpg',
      'assets/images/home_32.jpg',
      'assets/images/home_33.jpg',
      'assets/images/home_34.jpg',
      'assets/images/home_35.jpg',
      'assets/images/home_36.jpg',
      'assets/images/home_37.jpg',
      'assets/images/home_38.jpg',
      'assets/images/home_39.jpg',
      'assets/images/home_40.jpg',
      'assets/images/home_41.jpg',
      'assets/images/home_42.jpg',
      'assets/images/home_43.jpg',
    ],
    price: 290000,
    address: 'Tripoli Al-Mishtal',
    bedroom: 4,
    bathroom: 2,
    garages: 1,
    livingroom: 1,
    // Guestsroom: 2,
    kitchen: 4,
    description: '''
      Location: Tripoli / Al-Mashtal, Shamsi division

Excellent residential neighborhood close to all public and private facilities, wide paved street...

Land area: 290 m. The total roof area is 517 meters...

The first floor contains 2 reception rooms, a living room, a kitchen, and two bathrooms..

The second floor contains 1 bedroom suite (master), two children’s bedrooms, a bathroom, a balcony, a veranda in the middle of the courtyard, and a kitchen.
    ''',
    sqfeet: 450,
    time: DateTime(2024, 1, 26),
  ),
  House(
    imagePath: 'assets/images/home_44.jpg',
    morImgesUrl: [
      'assets/images/home_44.jpg',
      'assets/images/home_45.jpg',
      'assets/images/home_46.jpg',
      'assets/images/home_47.jpg',
      'assets/images/home_48.jpg',
      'assets/images/home_49.jpg',
      'assets/images/home_50.jpg',
      'assets/images/home_51.jpg',
    ],
    price: 800000,
    address: 'Ein zara',
    bedroom: 4,
    bathroom: 5,
    garages: 1,
    livingroom: 1,
    // Guestsroom: 1,
    kitchen: 2,
    description: '''
      the description
Two-storey villa and annex finished in 2024

Al-Sarraj / Al-Baghdadi Street

Land area: 241 m2

Building area: 480 m2

first floor :-

. Men's reception + bathroom

. Women's reception + bathroom

. Lounge

. kitchen

. Inner heaven

. swimming pool

second floor :-

Chat

. Master bedroom suite with bathroom, dressing room and terrace

. Two bedrooms + bathroom

. Lounge

. kitchen

Supplement :-

. Bedrooms

. bathroom

. Terrace on two sides

. kitchen

The company's percentage of the buyer: 1%
 ''',
    sqfeet: 480,
    time: DateTime(2024, 1, 25),
  ),
];
