import 'package:flutter/material.dart';
import 'package:recipe_app/data.dart';
import 'package:recipe_app/widget/customgriddelegate.dart';
import 'package:recipe_app/widget/customgridtile.dart';
import 'package:recipe_app/screens/details.dart';

class Bread extends StatelessWidget {
  //const Rice({Key? key}) : super(key: key);
  static const String path = "Bread";
  List data = bdfood["bread"];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customgriddelegate(),
      itemCount: data.length,
      padding: EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return customgridtile(
          imageurl: data[index]["image"],
          title: data[index]["title"],
          ontap: () {
            Navigator.pushNamed(
              context,
              details.path,
              arguments: {
                "catagory": "bread",
                "information": data[index],
              },
            );
          },
        );
      },
    );
  }
}
