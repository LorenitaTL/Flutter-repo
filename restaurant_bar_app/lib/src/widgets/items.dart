import 'package:flutter/material.dart';
class ItemCategory extends StatefulWidget {
  @override
  
  _ItemCategoryState createState() => _ItemCategoryState();
}

class _ItemCategoryState extends State<ItemCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(
                        Icons.category,
                        color: Colors.white60,
                      ),
                      Text(
                        'Cervezas',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '\$22.00',
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                          onPressed: null),
                      Text(
                        '0',
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          onPressed: null),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white24,
                          blurRadius: 3.0, // soften the shadow
                          spreadRadius: 0.2, //extend the shadow
                          offset: Offset(
                            2.0, // Move to right 10  horizontally
                            2.0, // Move to bottom 10 Vertically
                          ),
                        )
                      ]),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                );
  }
}