import 'package:flutter/material.dart';
import 'package:recipe_app/data.dart';
import 'package:recipe_app/screens/details.dart';
import 'package:recipe_app/widget/customgriddelegate.dart';
import 'package:recipe_app/widget/customgridtile.dart';

class Desert extends StatelessWidget {
  //const Desert({ Key? key }) : super(key: key);
  static const String path = "dessert";
  List data = bdfood["dessert"];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customgriddelegate(),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return customgridtile(
          imageurl: data[index]["image"],
          title: data[index]["title"],
          ontap: () {
            Navigator.pushNamed(
              context,
              details.path,
              arguments: {
                "catagory": "dessert",
                "information": data[index],
              },
            );
          },
        );
      },
    );
  }
}
