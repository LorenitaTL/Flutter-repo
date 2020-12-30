import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_bar_app/routes/routes.dart';
import 'package:restaurant_bar_app/services/auth_service.dart';
import 'package:restaurant_bar_app/services/menu_service.dart';
import 'package:restaurant_bar_app/services/mesas_service.dart';
import 'package:restaurant_bar_app/services/products_service.dart';
import 'package:restaurant_bar_app/services/socket_service.dart';
import 'package:restaurant_bar_app/theme/theme.dart' as Theme;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
        ChangeNotifierProvider(create: (_) => MenuService()),
        ChangeNotifierProvider(create: (_) => SocketService()),
        ChangeNotifierProvider(create: (_) => MesasService()),
        ChangeNotifierProvider(create: (_) => ProductService()),
      ],
      child: MaterialApp(
        title: 'CompanyApp',
        theme: Theme.CompanyThemeData,
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: appRoutes,
      ),
    );
  }
}

//TODO: Manejar evento para que los clientes no puedan cambiar de cuenta
