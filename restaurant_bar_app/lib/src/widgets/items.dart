import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

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

class ItemTable extends StatefulWidget {
  @override
  _ItemTableState createState() => _ItemTableState();
}

class _ItemTableState extends State<ItemTable> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xffffbd59),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [BoxShadow(color: Colors.black87, blurRadius: 5.0)],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.restaurant_menu_rounded,
                  color: Colors.white,
                  size: 35,
                ),
                Text('Mesa 1',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '18:52',
                  style: TextStyle(fontSize: 12),
                )
              ],
            )),
        Positioned(
          right: 15,
          top: 15,
          child: Container(
            alignment: Alignment.center,
            height: 22,
            width: 22,
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black87, blurRadius: 5.0)],
                color: Colors.black87,
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              '10',
              style: TextStyle(
                  color: Color(0xffffbd59), fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    );
  }
}
