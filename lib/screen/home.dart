import 'package:flutter/material.dart';
import 'package:mest/widgets/appbars.dart';
import 'package:mest/widgets/contents_widget.dart';
import 'package:mest/widgets/lines_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String imgIcon = "assets/home/";

  List imgList = [
    "assets/home/1.png",
    "assets/home/2.png",
    "assets/home/3.png",
    "assets/home/4.png",
    "assets/home/5.png",
    "assets/home/6.png",
    "assets/home/7.png"
  ];

  List newsTitle = [
    "New Opening Hours",
    "Spring Cocktails!",
    "Spring Cocktails!",
  ];

  List newsSubtitle = [
    "We are open from 10:00 am to 10:00 pm",
    "Enjoy our spring cocktails",
    "Enjoy our spring cocktails",
  ];
  List newsImg = [
    "assets/home/coffee.png",
    "assets/home/coffee.png",
    "assets/home/coffee.png",
  ];

  List roomNum = [
    "002",
    "004",
    "002",
    "004",
    "002",
    "004",
    "002",
    "004",
    "002",
    "004",
  ];
  List seatNum = [
    "Seat 001",
    "Seat 001",
    "Seat 001",
    "Seat 001",
    "Seat 001",
    "Seat 001",
    "Seat 001",
    "Seat 001",
    "Seat 001",
    "Seat 001",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          actions: [AppBarTrailingWidget()],
          leading: AppBarLeadingWidget()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/home/home.png"))),
            ),
            SizedBox(
              height: 10,
            ),
            ShackNowLineWidget(),
            ShackNowWidgets(imgList: imgList),
            SizedBox(
              height: 10,
            ),
            TileWidget(),
            SizedBox(
              height: 10,
            ),

            TokenLineWidget(),

            TokenWidget(),

            NewsLineWidget(),
            SizedBox(
              height: 10,
            ),
            NewsTileWidget(
                newsTitle: newsTitle,
                newsImg: newsImg,
                newsSubtitle: newsSubtitle),
            RoomLineWidget(),
            RoomWIdget(roomNum: roomNum, seatNum: seatNum),
            // Image.asset("assets/home/1.png"),
          ],
        ),
      ),
    );
  }
}
