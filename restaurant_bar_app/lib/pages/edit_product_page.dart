import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_bar_app/models/producto.dart';
import 'package:restaurant_bar_app/services/menu_service.dart';
import 'package:restaurant_bar_app/services/products_service.dart';
import 'package:restaurant_bar_app/theme/theme.dart';
import 'package:restaurant_bar_app/widgets/drawer_admin.dart';
import 'package:restaurant_bar_app/widgets/gradient_background.dart';
import 'package:restaurant_bar_app/widgets/headers.dart';
import 'package:restaurant_bar_app/widgets/text_field_container.dart';

class EditProductPage extends StatefulWidget {
  final Producto product;
  final String subcategory;

  const EditProductPage(
      {Key key, @required this.product, @required this.subcategory})
      : super(key: key);

  @override
  _EditProductPageState createState() => _EditProductPageState();
}

class _EditProductPageState extends State<EditProductPage> {
  MenuService menuService;
  final _formKey = GlobalKey<FormState>();

  String _value = "Disponible";
  TextEditingController nombreCtrl = TextEditingController();
  TextEditingController descripcionCtrl = TextEditingController();
  TextEditingController precioCtrl = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.menuService = Provider.of<MenuService>(context, listen: false);
    print(this.menuService.categorias);
  }

  @override
  Widget build(BuildContext context) {
    ProductService productService = Provider.of<ProductService>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      drawer: drawerAdmin(),
      backgroundColor: Colors.grey[800],
      body: Stack(
        children: [
          GradientBackground(),
          HeaderMini(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    padding: EdgeInsets.only(top: 20),
                    alignment: Alignment.topCenter,
                    child: Text(
                      'EDITAR PRODUCTO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(
                              7.0,
                              2.0,
                            ),
                            blurRadius: 10.0,
                            color: Colors.black26,
                          ),
                        ],
                      ),
                    )),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Form(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextFieldContainer(
                            child: TextFormField(
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'Agrega el nombre';
                                }
                                return null;
                              },
                              controller: nombreCtrl,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: 'Nombre del producto',
                                  hintStyle: TextStyle(color: Colors.white38),
                                  icon: Icon(
                                    Icons.restaurant,
                                    color: Color(0xffffbd59),
                                  ),
                                  border: InputBorder.none),
                            ),
                          ),
                          TextFieldContainer(
                            child: TextFormField(
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'Agrega una descripción';
                                }
                                return null;
                              },
                              controller: descripcionCtrl,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: 'Descripción',
                                  hintStyle: TextStyle(color: Colors.white38),
                                  icon: Icon(
                                    Icons.edit,
                                    color: Color(0xffffbd59),
                                  ),
                                  border: InputBorder.none),
                            ),
                          ),
                          TextFieldContainer(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              validator: (val) {
                                //TODO: Solo permitir números
                                if (val.isEmpty) {
                                  return 'Agrega un precio correcto';
                                }
                                return null;
                              },
                              controller: precioCtrl,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: 'Precio',
                                  hintStyle: TextStyle(color: Colors.white38),
                                  icon: Icon(
                                    Icons.attach_money,
                                    color: Color(0xffffbd59),
                                  ),
                                  border: InputBorder.none),
                            ),
                          ),
                          TextFieldContainer(
                            child: DropdownButtonFormField<String>(
                              isExpanded: true,
                              hint: Text(
                                'Categoría',
                                style: TextStyle(color: Colors.white38),
                              ),
                              dropdownColor: Colors.black,
                              items: this
                                  .menuService
                                  .categorias
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                          ),
                          TextFieldContainer(
                            child: DropdownButtonFormField(
                                hint: Text(
                                  'Disponible',
                                  style: TextStyle(color: Colors.white38),
                                ),
                                dropdownColor: Colors.black,
                                isExpanded: true,
                                value: _value,
                                items: [
                                  DropdownMenuItem(
                                    child: Text(
                                      "Disponible",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    value: 'Disponible',
                                  ),
                                  DropdownMenuItem(
                                    child: Text(
                                      "No Disponible",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    value: 'No disponible',
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {});
                                }),
                          ),
                           Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: RaisedButton.icon(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                color: Color(0xffffbd59),
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    print('Validate');
                                    print(nombreCtrl.text);
                                    print(descripcionCtrl.text);
                                    print(precioCtrl.text);
                                    print(_value);
                                    final producto = Producto(
                                        nombre: nombreCtrl.text,
                                        precio: double.parse(precioCtrl.text),
                                        descripcion: descripcionCtrl.text,
                                        disponible: _value == 'Disponible'
                                            ? true
                                            : false);
                                    productService
                                        .addProduct(producto)
                                        .then((_) => showDialog(
                                            context: context,
                                            builder: (_) => AlertDialog(
                                                  title: Text("Guardado"),
                                                  content: Text(
                                                      "El producto se ha guardado correctamente!"),
                                                  actions: <Widget>[
                                                    FlatButton(
                                                      child: Text('Aceptar',
                                                          style: TextStyle(
                                                              color: CompanyColors
                                                                      .yellow1[
                                                                  900])),
                                                      onPressed: () {
                                                        Navigator
                                                            .pushReplacementNamed(
                                                                context,
                                                                'products');
                                                      },
                                                    )
                                                  ],
                                                )));
                                  } else {
                                    print('error');
                                  }
                                },
                                icon: Icon(
                                  Icons.check,
                                  color: Colors.grey[800],
                                ),
                                label: Text(
                                  'Guardar',
                                  style: TextStyle(color: Colors.grey[800]),
                                )))
                        ],
                      ),
                    ),
                  ),
                ),
                flex: 6,
              )
            ],
          ),
        ],
      ),
    );
  }
}
