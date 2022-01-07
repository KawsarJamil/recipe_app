import 'package:flutter/material.dart';

SliverGridDelegateWithFixedCrossAxisCount customgriddelegate() {
  return SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 0.9,
    crossAxisSpacing: 10,
    // mainAxisExtent: 10,
    mainAxisSpacing: 10,
  );
}
