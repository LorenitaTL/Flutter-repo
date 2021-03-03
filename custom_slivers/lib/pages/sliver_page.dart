import 'package:flutter/material.dart';

class _CategoryItem {
  final String category;
  final String tag;
  final String asset;

  _CategoryItem({this.category, this.tag, this.asset});
}

final List<_CategoryItem> categories = [
  _CategoryItem(category: 'Pasta', tag: 'pasta', asset: 'images/food01.jpeg'),
  _CategoryItem(category: 'Fruits', tag: 'fruits', asset: 'images/food02.jpeg'),
  _CategoryItem(category: 'Sweets', tag: 'sweets', asset: 'images/food03.jpeg'),
  _CategoryItem(
      category: 'Seafood', tag: 'seafood', asset: 'images/food04.jpeg'),
  _CategoryItem(category: 'Nuts', tag: 'nuts', asset: 'images/food05.jpeg'),
  _CategoryItem(
      category: 'Vegetables', tag: 'vegetables', asset: 'images/food06.jpeg'),
];

class SliverPage extends StatefulWidget {
  @override
  _SliverPageState createState() => _SliverPageState();
}

class _SliverPageState extends State<SliverPage> {
  List<_CategoryItem> showCategories = categories;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SliverToBoxAdapter'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  _buildHeader(),
                  _buildSearch(),
                ],
              ),
            )
          ],
        ));
  }

  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.all(15.0),
      height: 100.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '吉原拉面',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite_border,
                        color: Colors.black26,
                        size: 12.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.0),
                        child: Text(
                          'yumi',
                          style: TextStyle(color: Colors.black26),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          ClipRRect(
            child: SizedBox(
              width: 60.0,
              height: 60.0,
              child: Image.asset(
                'images/shop.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          )
        ],
      ),
    );
  }

  Widget _buildSearch() {
    return Hero(
        tag: 'search',
        child: Card(
          margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
          elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
          ),
          child: Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            height: 45.0,
            child: Center(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.black26,
                      size: 20.0,
                    ),
                  ),
                  Expanded(
                      child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search category',
                        hintStyle: TextStyle(color: Colors.black26)),
                    cursorColor: Theme.of(this.context).accentColor,
                    onChanged: (value) {
                      _doSearch(value);
                    },
                  ))
                ],
              ),
            ),
          ),
        ));
  }

  void _doSearch(String search) {
    showCategories = categories
        .where((_CategoryItem category) =>
            category.category.toLowerCase().contains(search.toLowerCase()))
        .toList();
    setState(() {});
  }
}
