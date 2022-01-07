import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/screens/video.dart';
import 'package:recipe_app/widget/custombutton.dart';
import 'package:share/share.dart';

class details extends StatelessWidget {
  //const details({Key? key}) : super(key: key);
  Map info = {};
  static const String path = "details";
  sharedata(data) {
    String shareinfo = '''
    ${data["title"]}

    ${data["ingredients"]}

    ${data["directions"]}

    ''';
    Share.share('$shareinfo', subject: 'Look what I made!');
  }

  @override
  Widget build(BuildContext context) {
    info = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        //iconTheme: IconThemeData(size: 40, color: Colors.white),
        backgroundColor: Colors.red,
        title: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Details",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
              ),
            ),
            Text(
              "catagory: ${info["catagory"]}",
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 17,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              sharedata(info["information"]);
            },
            icon: Icon(Icons.share),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            //fit: StackFit.loose,
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Image.asset(
                info["information"]["image"],
                fit: BoxFit.cover,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                color: Colors.black.withOpacity(0.5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      info["information"]["title"],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              custombutton(
                icon: Icons.check,
                color: Colors.amber[900],
                ontap: () {},
                text: "COOKED",
              ),
              custombutton(
                icon: Icons.favorite,
                color: Colors.amber[600],
                ontap: () {},
                text: "FAVORITE",
              ),
              custombutton(
                icon: Icons.video_camera_front_sharp,
                color: Colors.amber[400],
                ontap: () {
                  Navigator.pushNamed(context, video.path,
                      arguments: info["information"]);
                },
                text: "VIDEO",
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "INGREDIENTS",
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Divider(
                        thickness: 4,
                        color: Colors.amber[600],
                      ),
                      for (int i = 0;
                          i < info["information"]["ingredients"].length;
                          i++)
                        Row(
                          children: [
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(info["information"]["ingredients"][i],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "DIRECTION",
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Divider(
                        thickness: 4,
                        color: Colors.amber[600],
                      ),
                      for (int i = 0;
                          i < info["information"]["directions"].length;
                          i++)
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 8,
                              width: 8,
                              margin: EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            SizedBox(
                              width: 9,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                    info["information"]["directions"][i],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ),
                          ],
                        )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
