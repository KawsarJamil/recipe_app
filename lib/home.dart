import 'package:flutter/material.dart';
import 'package:recipe_app/screens/bread.dart';
import 'package:recipe_app/screens/desert.dart';
import 'package:recipe_app/screens/fastfood.dart';
import 'package:recipe_app/screens/nonveg.dart';
import 'package:recipe_app/screens/rice.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const String path = "Home";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "BD FOOD RECIPE",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite),
            ),
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black54,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/non_veg/1.jpg"),
                ListTile(
                  onTap: () {},
                  trailing: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(color: Colors.red),
                    child: Center(
                        child: Text(
                      "0",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  title: Text(
                    "My Recipe",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.white,
                  height: 0,
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Favorite",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.white,
                  height: 0,
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Cooked",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.white,
                  height: 0,
                ),
                ListTile(
                  onTap: () {},
                  title: Text(
                    "Tips",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  color: Colors.black,
                  child: Text(
                    "More",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Search",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Divider(
                  thickness: 0.2,
                  color: Colors.white,
                  height: 0,
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            TabBar(
              isScrollable: true,
              unselectedLabelColor: Colors.redAccent,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.redAccent, Colors.orangeAccent]),
                borderRadius: BorderRadius.circular(28),
                color: Colors.redAccent,
              ),
              tabs: [
                Tab(
                  text: "Rice",
                ),
                Tab(
                  text: "Bread",
                ),
                Tab(
                  text: "Desert",
                ),
                Tab(
                  text: "Fast Food",
                ),
                Tab(
                  text: "Non Veg",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Rice(),
                  Bread(),
                  Desert(),
                  Fastfood(),
                  Nonveg(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
