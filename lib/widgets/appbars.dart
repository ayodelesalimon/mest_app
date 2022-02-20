import 'package:flutter/material.dart';

class AppBarLeadingWidget extends StatelessWidget {
  const AppBarLeadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/home/chev.png"))),
      ),
    );
  }
}

class AppBarTrailingWidget extends StatelessWidget {
  const AppBarTrailingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage("assets/home/person.png"))),
      ),
    );
  }
}
