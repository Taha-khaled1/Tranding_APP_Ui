import 'package:flutter/material.dart';

import '../../constant.dart';
import 'widget/body.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => new _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!;
      });
    });

    return Container(
      decoration: deco,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Body(controller: controller, currentPage: currentPage),
      ),
    );
  }
}
