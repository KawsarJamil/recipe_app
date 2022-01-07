import 'package:flutter/material.dart';
import 'package:recipe_app/data.dart';
import 'package:recipe_app/widget/customgriddelegate.dart';
import 'package:recipe_app/widget/customgridtile.dart';
import 'package:recipe_app/screens/details.dart';

class Nonveg extends StatelessWidget {
  // const Nonveg({Key? key}) : super(key: key);
  List data = bdfood["non_veg"];
  static const String path = "Nonveg";
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
                  "catagory": "Non Veg",
                  "information": data[index],
                },
              );
            },
          );
        });
  }
}
