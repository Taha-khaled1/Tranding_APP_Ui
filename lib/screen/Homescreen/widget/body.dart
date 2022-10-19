import 'package:flutter/material.dart';

import '../../../constant.dart';
import 'Topsection.dart';
import 'screollWidget.dart';

class Body extends StatelessWidget {
  Body({Key? key, required this.controller, required this.currentPage})
      : super(key: key);
  var currentPage;
  var controller;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: 12.0, right: 12.0, top: 30.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Topsection(
              boxtext: "Animated",
              headlintext: "Trending",
              text2: "Calibre-Semibold",
              textbody: "25+ Stories"),
          Stack(
            children: <Widget>[
              CardScrollWidget(currentPage),
              Positioned.fill(
                child: PageView.builder(
                  itemCount: images.length,
                  controller: controller,
                  reverse: true,
                  itemBuilder: (context, index) {
                    return Container();
                  },
                ),
              )
            ],
          ),
          Topsection(
              boxtext: "Latest",
              headlintext: "Favourite",
              text2: "Calibre-Semibold",
              textbody: "9+ Stories"),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset("assets/image_02.jpg",
                      width: 296.0, height: 222.0),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
