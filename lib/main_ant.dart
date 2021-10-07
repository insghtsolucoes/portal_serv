import 'package:flutter/material.dart';
import 'package:portal_serv/paginas/calendario.dart';
import 'package:portal_serv/paginas/home.dart';
import 'package:portal_serv/paginas/TreeView.dart';
import 'package:portal_serv/paginas/sistemas.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [Locale("pt", "BR")],
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

ThemeData _lightTheme = ThemeData(
    accentColor: Colors.pink,
    brightness: Brightness.light,
    primaryColor: Colors.blue);

ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.red,
  accentColor: Colors.amber,
);

bool _light = true;

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  var pageTitle = ['Home', 'Sistemas', 'Planta PMSL', 'Calendário'];

  var indexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        centerTitle: true,
        title: Text(pageTitle[indexPage]),
        elevation: 14,
        actions: [
          /* Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.1),
            child: IconButton(
              icon: Icon(
                Icons.date_range_outlined,
                color: Colors.white,
              ),
              onPressed: () async {
                setState(() {
                  final date;
                });
                final date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now(),
                  locale: Locale("pt", "BR"),
                );
                // print(date);
                // do something
              },
            ),
          ) */
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 72),
            child: IndexedStack(
              index: indexPage,
              children: [home(), sistemas(), TreeView(), CalendarApp()],
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
                    icon: Icon(Icons.map_sharp), label: Text('Planta')),
                // NavigationRailDestination(
                //     icon: Icon(Icons.date_range), label: Text('Calendário')),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
