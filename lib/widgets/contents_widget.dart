import 'package:flutter/material.dart';

class ShackNowWidgets extends StatelessWidget {
  const ShackNowWidgets({
    Key? key,
    required this.imgList,
  }) : super(key: key);

  final List imgList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          padding: EdgeInsets.all(5),
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: imgList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                imgList[index],
                height: 150,
              ),
            );
          }),
    );
  }
}


class RoomWIdget extends StatelessWidget {
  const RoomWIdget({
    Key? key,
    required this.roomNum,
    required this.seatNum,
  }) : super(key: key);

  final List roomNum;
  final List seatNum;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          padding: EdgeInsets.all(5),
          physics: ClampingScrollPhysics(),
          //    shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: roomNum.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: Text(
                      roomNum[index],
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(seatNum[index])
                ],
              ),
            );
          }),
    );
  }
}



class NewsTileWidget extends StatelessWidget {
  const NewsTileWidget({
    Key? key,
    required this.newsTitle,
    required this.newsImg,
    required this.newsSubtitle,
  }) : super(key: key);

  final List newsTitle;
  final List newsImg;
  final List newsSubtitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          // padding: EdgeInsets.all(5),
          physics: ClampingScrollPhysics(),
          //    shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: newsTitle.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(newsImg[index], height: 150),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            newsTitle[index],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            newsSubtitle[index],
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: "GothamMedium"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 60),
                    child: Center(
                        child: Image.asset(
                      "assets/home/arrow.png",
                      height: 30,
                    )),
                  )
                ],
              ),
            );
          }),
    );
  }
}



class TokenWidget extends StatelessWidget {
  const TokenWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: [
          Image.asset(
            "assets/home/token.png",
            height: 150,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Text(
            "We believe in helping others as much as we can, as well as recognizing those that help the community. Toekns help recognize the people who go above and beyone. Send your first token",
            textAlign: TextAlign.left,
            style: TextStyle(
                height: 1.2,
                fontWeight: FontWeight.w400,
                fontFamily: "GothamMedium"),
          ))
        ],
      ),
    );
  }
}



class TileWidget extends StatelessWidget {
  const TileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 180,
          width: MediaQuery.of(context).size.width / 3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/home/coffe.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text("COFFEE & TEA"),
          ),
        ),
        Container(
          height: 180,
          width: MediaQuery.of(context).size.width / 3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/home/breakfast.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text("BREAKFAST"),
          ),
        ),
        Container(
          height: 180,
          width: MediaQuery.of(context).size.width / 3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/home/coffe.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text("COFFEE & TEA"),
          ),
        )
      ],
    );
  }
}