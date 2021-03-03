import 'package:custom_bottom_nav_bar/details_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          backgroundColor: Colors.grey[200],
          bottomNavigationBar: Container(
              color: Colors.white,
              height: 70,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          color: Colors.grey[200],
                          spreadRadius: 1)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildContainerBottomNav(Icons.person),
                    buildContainerBottomNav(Icons.shopping_bag),
                    buildContainerBottomNav(Icons.home, isSelected: true),
                    buildContainerBottomNav(Icons.favorite),
                    buildContainerBottomNav(Icons.settings),
                  ],
                ),
              )),
          appBar: AppBar(
            toolbarHeight: 70,
            elevation: 0,
            backgroundColor: Colors.grey[200],
            leading: Image.asset('assets/images/hamburger.png'),
            actions: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  margin: EdgeInsets.all(10),
                  child: Image.asset('assets/images/SEARCH.png')),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                    text: TextSpan(
                        text: 'Shop ',
                        style: TextStyle(fontSize: 26, color: Colors.black),
                        children: [
                      TextSpan(
                          text: 'Anthropologie',
                          style: TextStyle(fontWeight: FontWeight.w700))
                    ])),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 40,
                child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildFlatButton('Home decore', isSelected: true),
                      buildFlatButton('Bath & body'),
                      buildFlatButton('Beauty'),
                    ]),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[300],
                              spreadRadius: 1,
                              blurRadius: 20)
                        ]),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Container(
                              height: 60,
                              child: ListView(
                                  physics: BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    buildColumn('Candels', isSelected: true),
                                    buildColumn('Vases'),
                                    buildColumn('Bins'),
                                    buildColumn('Floral'),
                                    buildColumn('Decor'),
                                  ])),
                          MyCandelList(),
                          LnneBar(),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(children: [
                              Text('Holiday Special',
                                  style: TextStyle(fontSize: 22)),
                              Spacer(),
                              Text('View all',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey)),
                            ]),
                          ),
                          SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(children: [
                              buildBottomContiner(),
                              buildBottomContiner(),
                              buildBottomContiner(),
                            ]),
                          )
                        ],
                      ),
                    )),
              )
            ],
          )),
    );
  }

  Container buildContainerBottomNav(IconData icon, {bool isSelected = false}) {
    return Container(
        decoration: BoxDecoration(
            color: isSelected ? Colors.pink[200] : Colors.white,
            shape: BoxShape.circle,
            boxShadow: isSelected
                ? [
                    BoxShadow(
                        color: Colors.pink[100],
                        blurRadius: 10.0,
                        spreadRadius: 1)
                  ]
                : []),
        height: 50,
        width: 50,
        child: Icon(icon, color: isSelected ? Colors.white : Colors.grey));
  }

  Container buildBottomContiner() {
    return Container(
        height: 150,
        width: 250,
        margin: EdgeInsets.only(left: 20),
        child: Row(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: SizedBox(
                height: 120,
                width: 100,
                child:
                    Image.asset('assets/images/candel3.jpg', fit: BoxFit.cover),
              )),
          Padding(
            padding: EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Coconut Milk Bath'),
              Text('16 oz', style: TextStyle(color: Colors.grey, fontSize: 18)),
              Spacer(),
              Text('\$28',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600))
            ]),
          )
        ]));
  }

  Padding buildColumn(String text, {bool isSelected = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Column(
        children: [
          Text(text,
              style: TextStyle(color: isSelected ? Colors.black : Colors.grey)),
          SizedBox(height: 5),
          if (isSelected)
            Container(
                height: 5,
                width: 5,
                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle))
        ],
      ),
    );
  }

  Padding buildFlatButton(String text, {bool isSelected = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: FlatButton(
          height: 30,
          onPressed: () {},
          child: Text(text,
              style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontSize: 18)),
          shape: StadiumBorder(),
          color: isSelected ? Colors.pink[200] : Colors.grey),
    );
  }
}

class MyCandelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          SizedBox(width: 15),
          buildItemWithImage(
              'candel1.jpg', 'Elemental Tin Candel', '24', context),
          buildItemWithImage('candel2.jpg', 'Summer Candel', '32', context),
          buildItemWithImage('candel3.jpg', 'Winter Candel', '40', context),
          buildItemWithImage('candel4.jpg', 'Dummy Candel', '18', context),
        ]));
  }

  GestureDetector buildItemWithImage(
      String img, String title, String price, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DetailsPage(
              img: img, title: title, price: price, context: context);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Container(
                height: 170,
                //width: 140,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/$img'),
                )),
            SizedBox(height: 5),
            Text(title, style: TextStyle(fontSize: 12)),
            Text('\$$price', style: TextStyle(fontSize: 18))
          ],
        ),
      ),
    );
  }
}

class LnneBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
      child: Container(
        height: 5,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
      ),
    );
  }
}
