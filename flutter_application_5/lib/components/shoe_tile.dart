// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../models/shoe.dart';
class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        // shoe picture
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(shoe.imagePath),
          ),
        //description
        Text(shoe.description),

        // price + details
        Padding(
          padding: const EdgeInsets.only(left:15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            // shoe name
            Text(shoe.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              overflow: TextOverflow.ellipsis
            ),),
          
            SizedBox(height: 5,),
          
            // price
            Text( '\#' + shoe.price,
            style: TextStyle(
              color: Colors.grey,
            ),
            ),
          
            ],),
            // plus button
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
                ),
              ),
              child: Icon(
                color: Colors.white,
                Icons.add
              )
              ),
          ],),
        )

        // button to add a cart
        ],
      ),
    );
  }
}