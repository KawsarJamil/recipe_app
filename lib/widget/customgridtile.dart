import 'package:flutter/material.dart';

class customgridtile extends StatelessWidget {
  customgridtile({
    this.imageurl,
    this.title,
    this.ontap,
    Key? key,
    //required this.data,
  }) : super(key: key);

  //final List data;
  String? imageurl;
  String? title;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    // final MediaQueryData mq = MediaQuery.of(context);
    return GestureDetector(
      onTap: ontap,
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                imageurl!,
              ),
              Text(
                ("$title"),
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.timer_outlined,
                        color: Colors.red,
                      ),
                      Text(
                        "30 min",
                        // style: TextStyle(
                        //   fontSize: 24 / mq.devicePixelRatio,
                        // ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.food_bank,
                        color: Colors.red,
                      ),
                      Text(
                        "15 ingredients",
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
