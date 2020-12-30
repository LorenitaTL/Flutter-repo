import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:restaurant_bar_app/models/mesa.dart';
import 'package:restaurant_bar_app/services/mesas_service.dart';
import 'package:restaurant_bar_app/widgets/items.dart';

class TablesPage extends StatefulWidget {
  @override
  _TablesPageState createState() => _TablesPageState();
}

class _TablesPageState extends State<TablesPage> {
  MesasService mesasService;
  List<Mesa> mesas;
  @override
  void initState() {
    super.initState();
    this.mesasService = Provider.of<MesasService>(context, listen: false);
    _obtenerMesas();
  }

  void _obtenerMesas() async {
    this.mesas = await this.mesasService.getMesas();
    for (Mesa item in mesas) {
      print(item.mesa);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      /*floatingActionButton: FloatingActionButton(onPressed: () {
        _listOrderTable(context, 'Mesa 1');
      }),*/
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('assets/images/bar.jpg'),
                    fit: BoxFit.cover)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.white,
                gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.black87,
                      Colors.grey.withOpacity(0.1),
                    ],
                    stops: [
                      0.0,
                      1.0
                    ])),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Text(
                      'MESAS RESTAURANTE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(
                              10.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            color: Colors.white60,
                          ),
                        ],
                      ),
                    )),
                Container(
                  child: ResponsiveGridRow(children: lisTables()
                      // [
                      //   ResponsiveGridCol(xs: 4, child: ItemTable()),
                      //   ResponsiveGridCol(xs: 4, child: ItemTable()),
                      //   ResponsiveGridCol(xs: 4, child: ItemTable()),
                      //   ResponsiveGridCol(xs: 4, child: ItemTable()),
                      //   ResponsiveGridCol(xs: 4, child: ItemTable()),
                      //   ResponsiveGridCol(xs: 4, child: ItemTable()),
                      //   ResponsiveGridCol(xs: 4, child: ItemTable()),
                      //   ResponsiveGridCol(xs: 4, child: ItemTable()),
                      //   ResponsiveGridCol(xs: 4, child: ItemTable()),
                      // ]
                      ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  lisTables() {
    List<ResponsiveGridCol> items = [];
    for (var i = 0; i < this.mesas.length; i++) {
      items.add(ResponsiveGridCol(
          xs: 4,
          child: ItemTable(
            nombreMesa: this.mesas[i].mesa,
          )));
    }
    // final items = [
    //   ResponsiveGridCol(xs: 4, child: ItemTable()),
    //   ResponsiveGridCol(xs: 4, child: ItemTable()),
    //   ResponsiveGridCol(xs: 4, child: ItemTable()),
    //   ResponsiveGridCol(xs: 4, child: ItemTable()),
    //   ResponsiveGridCol(xs: 4, child: ItemTable()),
    //   ResponsiveGridCol(xs: 4, child: ItemTable()),
    //   ResponsiveGridCol(xs: 4, child: ItemTable()),
    //   ResponsiveGridCol(xs: 4, child: ItemTable()),
    //   ResponsiveGridCol(xs: 4, child: ItemTable()),
    // ];
    return items;
  }

  void _listOrderTable(context, table) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        context: context,
        builder: (builder) {
          return Container(
            child: ListView.builder(
                itemCount: 15,
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    title: Text('Item $index'),
                    trailing: Icon(Icons.check),
                  );
                }),
          );
        });
  }
}
