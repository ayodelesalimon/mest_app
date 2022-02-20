import 'package:flutter/material.dart';

class RoomLineWidget extends StatelessWidget {
  const RoomLineWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Container(
            width: 100,
            child: Divider(
              thickness: 1,
              color: Colors.black,
              height: 2,
            ),
          ),
        ),
        Text("Rooms Availble Now"),
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Container(
            width: 100,
            child: Divider(
              thickness: 1,
              color: Colors.black,
              height: 2,
            ),
          ),
        ),
      ],
    );
  }
}

class NewsLineWidget extends StatelessWidget {
  const NewsLineWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Container(
            width: 100,
            child: Divider(
              thickness: 1,
              color: Colors.black,
              height: 2,
            ),
          ),
        ),
        Text("Latest News"),
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Container(
            width: 100,
            child: Divider(
              thickness: 1,
              color: Colors.black,
              height: 2,
            ),
          ),
        ),
      ],
    );
  }
}
class TokenLineWidget extends StatelessWidget {
  const TokenLineWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Container(
            width: 80,
            child: Divider(
              thickness: 1,
              color: Colors.black,
              height: 2,
            ),
          ),
        ),
        Text("Send a token of gratitude"),
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Container(
            width: 80,
            child: Divider(
              thickness: 1,
              color: Colors.black,
              height: 2,
            ),
          ),
        ),
      ],
    );
  }
}
class ShackNowLineWidget extends StatelessWidget {
  const ShackNowLineWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Container(
            width: 100,
            child: Divider(
              thickness: 1,
              color: Colors.black,
              height: 2,
            ),
          ),
        ),
        Text("In Shack Now"),
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Container(
            width: 100,
            child: Divider(
              thickness: 1,
              color: Colors.black,
              height: 2,
            ),
          ),
        ),
      ],
    );
  }
}
