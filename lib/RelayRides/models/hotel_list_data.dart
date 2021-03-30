class HotelListData {
  HotelListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = "",
    this.rating = 4.5,
    this.perHour = 180,
  });

  String imagePath;
  String titleTxt;
  String subTxt;
  double rating;
  int perHour;

  static List<HotelListData> hotelList = <HotelListData>[
    HotelListData(
      imagePath: 'assets/hotel/hotel_1.png',
      titleTxt: 'Harley Davidson',
      subTxt: 'Pulchowk Campus, Lalitpur',
      rating: 4.4,
      perHour: 300,
    ),
    HotelListData(
      imagePath: 'assets/hotel/hotel_2.png',
      titleTxt: 'Vespa Scooty',
      subTxt: 'Kupondole, Lalitpur',
      rating: 4.5,
      perHour: 200,
    ),
    // HotelListData(
    //   imagePath: 'assets/hotel/hotel_3.png',
    //   titleTxt: 'Grand Royal Hotel',
    //   subTxt: 'Wembley, London',
    //   dist: 3.0,
    //   reviews: 62,
    //   rating: 4.0,
    //   perNight: 60,
    // ),
    // HotelListData(
    //   imagePath: 'assets/hotel/hotel_4.png',
    //   titleTxt: 'Queen Hotel',
    //   subTxt: 'Wembley, London',
    //   dist: 7.0,
    //   reviews: 90,
    //   rating: 4.4,
    //   perNight: 170,
    // ),
    // HotelListData(
    //   imagePath: 'assets/hotel/hotel_5.png',
    //   titleTxt: 'Grand Royal Hotel',
    //   subTxt: 'Wembley, London',
    //   dist: 2.0,
    //   reviews: 240,
    //   rating: 4.5,
    //   perNight: 200,
    // ),
  ];
}
