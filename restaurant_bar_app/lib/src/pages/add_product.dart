import 'package:flutter/material.dart';
import 'package:restaurant_bar_app/src/widgets/headers.dart';

class AddProductPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          HeaderMini(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'AGREGAR NUEVO PRODUCTO',
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
                flex: 2,
              ),
              Expanded(
                child: Container(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFieldContainer(
                          child: TextField(
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
                          child: TextField(
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
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: 'Costo',
                                hintStyle: TextStyle(color: Colors.white38),
                                icon: Icon(
                                  Icons.attach_money,
                                  color: Color(0xffffbd59),
                                ),
                                border: InputBorder.none),
                          ),
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
                flex: 7,
              )
            ],
          )
        ],
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.9,
      child: child,
      decoration: BoxDecoration(
          color: Colors.black38, borderRadius: BorderRadius.circular(29)),
    );
  }
}
