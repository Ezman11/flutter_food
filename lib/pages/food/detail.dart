import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food/models/food.dart';


class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);
  static const routeName = '/food_details_page';

  @override
  Widget build(BuildContext context) {
    var item = ModalRoute.of(context)!.settings.arguments as Food;

    return Scaffold(
      appBar: AppBar(
        title: Text("${item.name}"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                child: Image.asset(
                  "assets/images/${item.image}",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Column(
              children: [
                Text("ชื่อเมนู: ${item.name}",
                    style: TextStyle(fontSize: 20)),
                Text("ราคา: ${item.price} บาท",
                    style: TextStyle(fontSize: 20)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}