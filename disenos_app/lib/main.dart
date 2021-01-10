import 'package:disenos_app/src/models/layout_model.dart';
import 'package:disenos_app/src/pages/launcher_page.dart';
import 'package:disenos_app/src/pages/launcher_tablet_page.dart';
import 'package:disenos_app/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// void main() => runApp(MultiProvider(
//       providers: [
//         Provider<ThemeChanger>(create: (_) => new ThemeChanger(2)),
//         Provider<LayoutModel>(create: (_) => new LayoutModel())
//       ],
//       child: MyApp(),
//     ));

void main() => runApp(ChangeNotifierProvider(
      create: (_) => new LayoutModel(),
      child: ChangeNotifierProvider(
          create: (_) => new ThemeChanger(2), child: MyApp()),
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeChanger>(context).currentTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: currentTheme,
      title: 'Diseños App',
      home: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
        print('Orientation $orientation');
        final screenSize = MediaQuery.of(context).size;

        if (screenSize.width > 500) {
          return LauncherTabletPage();
        } else {
          return LauncherPage();
        }
      }),
    );
  }
}
