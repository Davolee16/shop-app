// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        // search bar
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10)
            ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search',
              style: TextStyle(
                color: Colors.grey[600],
              ),
              ),
              Icon(Icons.search,
              color: Colors.grey[600],
              ),
            ],
          ),
        ),

        // a message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text('everyone flies.. some fly longer than others'),

        ),
        // hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Hot Picks 🔥',
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 24
              ),
              ),
              Text('See all',
              style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.black,
              )
              ),
            ],
            ),
        ),
        SizedBox(height: 10,),

        // list of shoes for sale
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
          // get a shoe from the shop list
          Shoe shoe = value.getShoeList()[index];

          // return the shoe
          return ShoeTile(
            shoe: shoe,
          );
        },
        ),
          
        ),

        Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
          child: Divider(
            color: Colors.white
          ),
        )
      ],
    ),
    );
  }
}