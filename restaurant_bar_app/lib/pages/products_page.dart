import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_bar_app/models/menu.dart';
import 'package:restaurant_bar_app/models/producto.dart';
import 'package:restaurant_bar_app/pages/edit_product_page.dart';
import 'package:restaurant_bar_app/theme/theme.dart';
import 'package:restaurant_bar_app/widgets/drawer_admin.dart';
import 'package:restaurant_bar_app/services/menu_service.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  MenuService menuService;
  List<Subcategoria> listaProductos = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.menuService = Provider.of<MenuService>(context, listen: false);
    _getProducts();
  }

  _getProducts() async {
    List<Menu> products = await this.menuService.getMenu();
    print(products[0].nombreCategoria);
    print(products[0].subcategorias);
    print(this.menuService.categoriaSeleccionada);
    this.listaProductos =  await this.menuService.getSubcategories(this.menuService.categoriaSeleccionada); //products[0].subcategorias;
    this.menuService.categorias = await this.menuService.getCategories();
    print(this.menuService.categorias);
  }

  @override
  Widget build(BuildContext context) {
    MenuService menuS = Provider.of<MenuService>(context);
    print(menuS.categoriaSeleccionada);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: CompanyColors.yellow1[700]),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black26,
        title: Text(
          'LISTA DE PRODUCTOS',
          style: TextStyle(
              color: CompanyColors.yellow1[700],
              fontWeight: FontWeight.w600,
              fontSize: 18),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.restaurant,
                color: CompanyColors.yellow1[700],
              ),
              onPressed: null),
        ],
      ),
      drawer: drawerAdmin(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'add_product');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
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
                height: 130,
                padding: EdgeInsets.only(top: 0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _cardCategory('assets/images/Bebidas.jpg', 'Bebidas',
                        Colors.black87, menuS),
                    _cardCategory('assets/images/burger.jpg', 'Platillos',
                        Colors.white, menuS),
                    _cardCategory('assets/images/Postres.jpg', 'Postres',
                        Colors.black87, menuS),
                    _cardCategory('assets/images/Especialidades.jpg',
                        'Especialidades', Colors.black87, menuS),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    menuS.categoriaSeleccionada.toUpperCase(),
                    style: TextStyle(
                        color: Color(0xffffbd59),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )),
              Expanded(
                  child: Container(
                      child: ListView.builder(
                          itemCount: listaProductos.length,
                          itemBuilder: (_, i) {
                            return ExpansionTile(
                              title: Text(
                                listaProductos[i].nombreSubcategoria,
                                style: TextStyle(
                                    color: CompanyColors.yellow1[700]),
                              ),
                              children: _products(listaProductos[i].productos,
                                  listaProductos[i].nombreSubcategoria),
                            );
                          })))
            ],
          )
        ],
      ),
    );
  }

  InkWell _cardCategory(src, title, color, MenuService menuService) {
    return InkWell(
      onTap: () {
        menuService.categoriaSeleccionada = title;
        menuService.notifyListeners();
      },
      child: Container(
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
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
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
      ),
    );
  }

  _products(List<Producto> prods, subcategory) {
    List<Widget> items = [];
    for (Producto item in prods) {
      items.add(InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  EditProductPage(product: item, subcategory: subcategory)),
        ),
        child: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    offset: Offset(5.0, 2.0),
                    color: Colors.black54)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.nombre,
                style: TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  Icon(
                    Icons.edit,
                    color: Color(0xffffbd59),
                  ),
                ],
              )
            ],
          ),
        ),
      ));
    }
    return items;
  }
}
