import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superellipse_shape/superellipse_shape.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Material(
        color: const Color.fromARGB(255, 44, 44, 44),
        shape: SuperellipseShape(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          width: 150.0,
          height: 250.0,
          child: Column(
            children: [
              Container(
                height: 150,
                width: 200,
                //child: ,
                color: Colors.black54,
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Column(
                  children: [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
