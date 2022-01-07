import 'package:flutter/material.dart';
import 'package:recipe_app/screens/details.dart';
import 'package:recipe_app/screens/fastfood.dart';
import 'package:recipe_app/screens/nonveg.dart';
import 'package:recipe_app/screens/bread.dart';
import 'package:recipe_app/screens/desert.dart';
import 'package:recipe_app/screens/rice.dart';
import 'package:recipe_app/screens/video.dart';
import 'home.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  //const myApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Recipe App",
      initialRoute: Home.path,
      routes: {
        Home.path: (context) => Home(),
        Rice.path: (context) => Rice(),
        Bread.path: (context) => Bread(),
        Desert.path: (context) => Desert(),
        Fastfood.path: (context) => Fastfood(),
        Nonveg.path: (context) => Nonveg(),
        details.path: (context) => details(),
        video.path: (context) => video(),
      },
    );
  }
}
