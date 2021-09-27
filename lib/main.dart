import 'package:flutter/material.dart';
import 'package:portal_serv/paginas/home.dart';
import 'package:portal_serv/paginas/manuais.dart';
import 'package:portal_serv/paginas/sistemas.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portal do Servidor',
      theme: _createTheme(),
      home: MyStatefulWidget(),
    );
  }
}

ThemeData _createTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blueGrey,
    primaryColor: const Color(0xFF212121),
    accentColor: const Color(0xFF64ffda),
    canvasColor: const Color(0xFF303030),
    fontFamily: 'Georgia',
  );
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  var pageTitle = [
    'Home',
    'Sistemas',
    'Manuais',
  ];

  var indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        centerTitle: true,
        title: Text(pageTitle[indexPage]),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 72),
            child: IndexedStack(
              index: indexPage,
              children: [
                home(),
                sistemas(),
                manuais(),
              ],
            ),
          ),
          Row(children: [
            NavigationRail(
                elevation: 14,
                extended: false,
                selectedIndex: indexPage,
                labelType: NavigationRailLabelType.selected,
                onDestinationSelected: (value) {
                  setState(() {
                    indexPage = value;
                  });
                },
                destinations: <NavigationRailDestination>[
                  NavigationRailDestination(
                      icon: Icon(Icons.home), label: Text('Home')),
                  NavigationRailDestination(
                      icon: Icon(Icons.airplay_sharp), label: Text('Sistemas')),
                  NavigationRailDestination(
                      icon: Icon(Icons.app_registration_outlined),
                      label: Text('Manuais')),
                ]),
          ]),
        ],
      ),
    );
  }
}
