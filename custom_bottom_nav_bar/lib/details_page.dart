import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String img;
  final String title;
  final String price;
  final BuildContext context;

  const DetailsPage(
      {@required this.img,
      @required this.title,
      @required this.price,
      this.context});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset('assets/images/$img',
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover),
        IconButton(
            padding: EdgeInsets.only(left: 20, top: 40),
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  Expanded(
                      child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ILLUM'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('$title', style: TextStyle(fontSize: 20)),
                            Text('\$$price',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('SIZE'),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('16 Oz',
                                        style: TextStyle(fontSize: 18))
                                  ]),
                            ),
                            Expanded(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('QTY'),
                                    Text('1', style: TextStyle(fontSize: 18)),
                                  ]),
                            )
                          ],
                        ),
                        SizedBox(height: 20),
                        Divider(
                          thickness: 1.5,
                        ),
                        ListTile(
                          leading:
                              Text('Details', style: TextStyle(fontSize: 18)),
                          trailing: IconButton(
                              icon: Icon(Icons.add), onPressed: () {}),
                        ),
                        Divider(
                          thickness: 1.5,
                        ),
                        ListTile(
                          leading:
                              Text('Siping & returns', style: TextStyle(fontSize: 18)),
                          trailing: IconButton(
                              icon: Icon(Icons.add), onPressed: () {}),
                        ),
                        Divider(
                          thickness: 1.5,
                        ),
                      ],
                    ),
                  )),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            child: Icon(Icons.favorite_border),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                shape: BoxShape.circle)),
                        FlatButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.shopping_bag_outlined,
                                color: Colors.white),
                            label: Text('Add to basket',
                                style: TextStyle(color: Colors.white)),
                            color: Colors.pink[200],
                            shape: StadiumBorder(),
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 4,
                                vertical: 10))
                      ],
                    ),
                  )
                ],
              )),
        )
      ],
    ));
  }
}
