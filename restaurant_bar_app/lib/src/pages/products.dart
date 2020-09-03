import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()=>print('Add product'), child: Icon(Icons.add),backgroundColor: Colors.grey,),
      backgroundColor: Colors.grey[800],
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Colors.black26,
                Colors.black45,
                Colors.black54,
                Colors.black87,
              ],
              stops: [0.1, 0.5, 0.7, 0.9],
            )),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        onPressed: null),
                    Text(
                      'LISTA DE PRODUCTOS',
                      style: TextStyle(
                          color: Color(0xffffbd59),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.restaurant,
                          color: Colors.white,
                        ),
                        onPressed: null),
                  ],
                ),
              ),
              Container(
                height: 130,
                padding: EdgeInsets.only(top: 0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _cardCategory(
                        'assets/images/beer.jpg', 'Bebidas', Colors.black87),
                    _cardCategory(
                        'assets/images/burger.jpg', 'Platillos', Colors.white),
                    _cardCategory(
                        'assets/images/postres.jpg', 'Postres', Colors.black87),
                    _cardCategory('assets/images/sushi.jpg', 'Especialidades',
                        Colors.black87),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text('PLATILLOS', style: TextStyle(color: Color(0xffffbd59), fontSize: 18, fontWeight: FontWeight.w600),)),
              Container(
                height: 500,
                child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                offset: Offset(5.0,2.0),
                                color: Colors.black54
                              )
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Item $index',
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.edit,
                                  color: Color(0xffffbd59),
                                ),
                                Icon(
                                  Icons.delete,
                                  color: Color(0xffffbd59),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          )
        ],
      ),
    );
  }

  Container _cardCategory(src, title, color) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(blurRadius: 5, color: color, offset: Offset(0.5, 0.2))
          ]),
      child: Column(
        children: [
          Container(
            width: 150,
            //margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              child: Image.asset(src),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
            width: 150,
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            decoration: BoxDecoration(
              color: Color(0xffffbd59),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
