import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_bar_app/models/producto.dart';
import 'package:restaurant_bar_app/theme/theme.dart';
import 'package:restaurant_bar_app/models/menu.dart';
import 'package:restaurant_bar_app/services/menu_service.dart';
import 'package:restaurant_bar_app/widgets/items.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryPage extends StatefulWidget {
  final String category;
  const CategoryPage({Key key, this.category}) : super(key: key);
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  MenuService menuService;
  List<Producto> products = [];
  List<Subcategoria> sub;
  @override
  void initState() {
    super.initState();
    this.menuService = Provider.of<MenuService>(context, listen: false);
    _cargarMenu();
  }

  void _cargarMenu() async {
    List<Menu> menu = await this.menuService.getMenu();

    //products = this.menuService.productos;
//     print('Category');
//     print(this.widget.category);
//     print('UID');
//     print(menu[0].uid);

//     print('Categoria');
//     print(menu[0].nombreCategoria);

// //TODO: OBTENER SUBCATEGORIAS Y SUS PRODUCTOS
//     print('SUBCATEGORIA');
//     print(menu[0].subcategorias[0].nombreSubcategoria);
//     for (var item in menu[0].subcategorias) {
//       print(item.nombreSubcategoria);
//     }

    // print('FIN SUBCATEGORIA');

    // print('Lista de productos');
    // print(menu[0].subcategorias[0].productos[0].nombre);
    // print(menu[0].subcategorias[0].productos[0].precio);
    // final prods = menu[0].subcategorias[0].productos;
    // products = menu[0].subcategorias[0].productos;
    // for (var item in prods) {
    //   print(item.nombre);
    //   print(item.precio);
    // }

    print(this.menuService.subSelect);
    print('Subcategories');
    sub = await this.menuService.getSubcategories(this.widget.category);
    for (Subcategoria item in sub) {
      print(item.nombreSubcategoria);
    }
  }

  @override
  Widget build(BuildContext context) {
    MenuService menuService = Provider.of<MenuService>(context, listen: true);
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                'assets/images/${widget.category}.jpg',
              ),
            ),
          ),
          height: 200.0,
        ),
        Container(
          height: 200.0,
          decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.grey.withOpacity(0.4),
                    Colors.black87,
                  ],
                  stops: [
                    0.0,
                    1.0
                  ])),
        ),
        Column(
          children: [
            _menuHeader(menuService),
            Expanded(
              child: _title(),
              flex: 2,
            ),
            Expanded(
              child: _listSubcategories(context, sub),
              flex: 2,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: menuService.productos.length,
                  itemBuilder: (_, i) {
                    return ItemCategory(
                      nombre: menuService.productos[i].nombre,
                      precio: menuService.productos[i].precio,
                      id: menuService.productos[i].id,
                      menuService: menuService,
                    );
                  }),
              flex: 8,
            )
          ],
        )
      ]),
    );
  }

  Container _menuHeader(MenuService menuService) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.menu,
                color: CompanyColors.yellow1[500],
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.restaurant,
                color: CompanyColors.yellow1[500],
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'pedido');
              }),
        ],
      ),
    );
  }

  Container _title() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        widget.category.toUpperCase(),
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w700, fontSize: 25),
      ),
    );
  }
}

Container _listSubcategories(context, List<Subcategoria> sub) {
  MenuService menuService = Provider.of<MenuService>(context);
  return Container(
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sub.length,
        itemBuilder: (_, i) {
          return itemSubcategory(
              menuService, sub[i], FontAwesomeIcons.beer, false);
        }),
  );
}

InkWell itemSubcategory(
    MenuService menuService, Subcategoria subcategory, icon, active) {
  return InkWell(
    splashColor: Colors.transparent,
    onTap: () {
      print(menuService.subSelect);
      menuService.subSelect = subcategory.nombreSubcategoria;
      menuService.productos = subcategory.productos;
      menuService.notifyListeners();
      print(menuService.subSelect);
      for (var item in menuService.productos) {
        print(item.nombre);
      }
    },
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FaIcon(
            icon,
            color: active ? CompanyColors.yellow1[500] : Colors.white70,
            size: 30,
          ),
          Text(
            subcategory.nombreSubcategoria,
            style: TextStyle(
              color: active ? CompanyColors.yellow1[500] : Colors.white70,
            ),
          ),
          Container(
            height: 2,
            color: active ? CompanyColors.yellow1[500] : Colors.transparent,
          )
        ],
      ),
      width: 80,
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
    ),
  );
}
