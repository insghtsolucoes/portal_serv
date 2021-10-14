import 'package:flutter/material.dart';
import 'package:portal_serv/paginas/home.dart';
import 'package:portal_serv/paginas/TreeView.dart';
import 'package:portal_serv/paginas/sistemas.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:getwidget/getwidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DarkLightTheme();
  }
}

class DarkLightTheme extends StatefulWidget {
  const DarkLightTheme({
    Key? key,
  }) : super(key: key);

  @override
  State<DarkLightTheme> createState() => _DarkLightThemeState();
}

ThemeData _lightTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.white,
  brightness: Brightness.light,
  backgroundColor: const Color(0xFFE5E5E5),
  accentColor: Colors.blueGrey,
  accentIconTheme: IconThemeData(color: Colors.white),
  dividerColor: Colors.white54,
  fontFamily: 'Georgia',
);

ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.blueGrey,
  primaryColor: const Color(0xFF212121),
  accentColor: const Color(0xFF64ffda),
  canvasColor: const Color(0xFF303030),
  fontFamily: 'Georgia',
);

bool _light = false;

class _DarkLightThemeState extends State<DarkLightTheme> {
  var pageTitle = ['Home', 'Sistemas', 'TreeView', 'Calendário'];

  var indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [Locale("pt", "BR")],
      theme: _light ? _lightTheme : _darkTheme,
      title: 'Material',
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blueGrey[900],
        appBar: GFAppBar(
          //centerTitle: true,

          title: Text(
            pageTitle[indexPage],
            textAlign: TextAlign.start,
          ),
          elevation: 8,
          actions: [
            Row(
              children: [
                Column(
                  children: [
                    Switch(
                      value: _light,
                      activeThumbImage: AssetImage('assets/images/light.png'),
                      inactiveThumbImage: AssetImage('assets/images/black.png'),
                      onChanged: (state) {
                        setState(() {
                          _light = state;
                        });
                      },
                    ),
                    /*  Text(
                      _light ? 'Claro' : 'Escuro',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 8.0),
                    ), */
                  ],
                ),
              ],
            ),
          ],
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
                  TreeView(),
                ],
              ),
            ),
            Row(children: [
              NavigationRail(
                elevation: 14, //Dá elevação a barra, com uma sombra
                extended: false, //Extende a barra ao clicar
                selectedIndex: indexPage,
                labelType: NavigationRailLabelType
                    .selected, //Exibe o texto abaixo do ícone ao selecionar
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
                      icon: Icon(Icons.account_tree_outlined),
                      label: Text('TreeVie')),
                  // NavigationRailDestination(
                  //     icon: Icon(Icons.date_range), label: Text('Calendário')),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
