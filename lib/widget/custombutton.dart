import 'package:flutter/material.dart';

class custombutton extends StatelessWidget {
  final VoidCallback? ontap;
  final IconData? icon;
  final String? text;
  final Color? color;

  const custombutton({
    this.icon,
    this.ontap,
    this.text,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: color,
        child: InkWell(
          onTap: ontap,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                Text(
                  text!,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
