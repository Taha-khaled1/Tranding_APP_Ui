import 'package:flutter/material.dart';

import '../../../constant.dart';

class Topsection extends StatelessWidget {
  const Topsection({
    required this.boxtext,
    required this.headlintext,
    required this.text2,
    required this.textbody,
    Key? key,
  }) : super(key: key);
  final String headlintext, text2, textbody, boxtext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(headlintext,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 46.0,
                    fontFamily: text2,
                    letterSpacing: 1.0,
                  )),
              IconButton(
                icon: Icon(
                  CustomIcons.option,
                  size: 12.0,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFff6e6e),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
                      child:
                          Text(boxtext, style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(textbody, style: TextStyle(color: Colors.blueAccent))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
