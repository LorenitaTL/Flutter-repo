import 'package:bimbomba_application/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:bimbomba_application/widgets/headers.dart';

class DetailsServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Column(children: [
            SearchHeader(),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(color: Colors.black26, blurRadius: 5.0)
                            ]),
                        child: Column(children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  image: DecorationImage(
                                      image: ExactAssetImage(
                                          'assets/images/cake.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            flex: 4,
                          ),
                          Expanded(
                              child: Container(
                                  child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                        'Pastel de arracadas'.toUpperCase(),
                                        style: TextStyle(
                                            color: CompanyColors.blue[600],
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(bottom: 10),
                                    child: Text('\$550',
                                        style: TextStyle(
                                            color: CompanyColors.orange[500],
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
                                        style:
                                            TextStyle(color: Colors.grey[600])),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Container(
                                              padding: EdgeInsets.all(10),
                                              margin: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color:
                                                      CompanyColors.blue[400],
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors.grey,
                                                        spreadRadius: 2,
                                                        blurRadius: 4.0)
                                                  ]),
                                              child: Text('Ver disponibilidad',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500))),
                                          flex: 1),
                                      Expanded(
                                          child: Container(
                                              padding: EdgeInsets.all(10),
                                              margin: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color:
                                                      CompanyColors.orange[200],
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: Colors.grey,
                                                        spreadRadius: 2,
                                                        blurRadius: 4.0)
                                                  ]),
                                              child: Text('Agregar al carrito',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500))),
                                          flex: 1)
                                    ],
                                  )
                                ],
                              )),
                              flex: 6)
                        ])))),
          ]),
        ));
  }
}
