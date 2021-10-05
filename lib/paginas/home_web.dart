import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';
import 'package:async/async.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../utils.dart';

import 'package:intl/date_symbol_data_local.dart';

const _ramais = 'http://10.1.0.16:3002/';
const _email = 'https://webmail.santaluzia.mg.gov.br/SOGo/so/';
const _suporte = 'https://glpi.santaluzia.mg.gov.br/front/central.php';
const _contra =
    'https://portaldofuncionario.santaluzia.mg.gov.br/portalfuncionario/login.xhtml';

mixin hom implements StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MediaQuery.of(context).size.shortestSide; // Para diferentes dispositivos.

    return MaterialApp(
      title: 'Portal do Servidor',
    );
  }
}

class homeweb extends StatefulWidget {
  const homeweb({Key? key}) : super(key: key);

  @override
  _homewebState createState() => _homewebState();
}

class _homewebState extends State<homeweb> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 260,
              elevation: 14,
              flexibleSpace: Stack(
                children: [
                  Positioned.fill(
                      child: Image.asset(
                    "assets/images/banner.png",
                    fit: BoxFit.cover,
                  )),
                  Container(
                    padding: EdgeInsets.all(4.0),
                    alignment: Alignment.topRight,
                    child: Text(
                      'Central de Aplicações do Servidor Municipal - Web',
                      style: TextStyle(
                          color: Colors.blueGrey[100], fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    margin: EdgeInsets.all(30),
                    height: 200.0,
                    // width: 10,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      color: Colors.transparent.withOpacity(0.09),
                      border: Border.all(color: Colors.blueGrey, width: 0.2),
                      borderRadius: BorderRadius.circular(08),
                      /*    image: const DecorationImage(
                            image: AssetImage('assets/images/tst.png'),
                            fit: BoxFit.cover,
                          ), */
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\n"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Flexible(
                                          child: FlatButton(
                                            textColor: Colors.blueGrey,
                                            height: 100.0,
                                            color: Colors.transparent,
                                            highlightColor: Colors.purple,
                                            hoverColor: Colors.amber[600],
                                            focusColor: Colors.amber,
                                            splashColor: Colors.grey,
                                            disabledColor: Colors.amber[400],
                                            onPressed: _suporteunchURL,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Icon(
                                                    Icons.support_agent_sharp,
                                                    size: 70,
                                                    color: Colors.white60,
                                                  ),
                                                ),
                                                Text('Suporte',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white60,
                                                        fontSize: 15.0))
                                              ],
                                            ),
                                          ),
                                        ),

                                        Flexible(
                                          child: FlatButton(
                                            textColor: Colors.blueGrey,
                                            height: 100.0,
                                            color: Colors.transparent,
                                            highlightColor: Colors.purple,
                                            hoverColor: Colors.amber[600],
                                            focusColor: Colors.amber,
                                            splashColor: Colors.grey,
                                            disabledColor: Colors.amber[400],
                                            onPressed: _emaillaunchURL,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Icon(
                                                    Icons.email,
                                                    size: 70,
                                                    color: Colors.white60,
                                                  ),
                                                ),
                                                Text('E-mail',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white60,
                                                        fontSize: 15.0))
                                              ],
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 2,
                                          child: FlatButton(
                                            textColor: Colors.blueGrey,
                                            height: 100.0,
                                            color: Colors.transparent,
                                            highlightColor: Colors.purple,
                                            hoverColor: Colors.amber[600],
                                            focusColor: Colors.amber,
                                            splashColor: Colors.grey,
                                            disabledColor: Colors.amber[400],
                                            onPressed: _ramaishURL,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Icon(
                                                    Icons.phone_enabled_rounded,
                                                    size: 70,
                                                    color: Colors.white60,
                                                  ),
                                                ),
                                                Text('Ramais',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white60,
                                                        fontSize: 15.0))
                                              ],
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: FlatButton(
                                            textColor: Colors.blueGrey,
                                            height: 100.0,
                                            highlightColor: Colors.purple,
                                            hoverColor: Colors.amber[600],
                                            focusColor: Colors.amber,
                                            splashColor: Colors.grey,
                                            disabledColor: Colors.amber[400],
                                            onPressed: _chequelaunchURL,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Icon(
                                                    Icons
                                                        .account_balance_wallet_rounded,
                                                    size: 70,
                                                    color: Colors.white60,
                                                  ),
                                                ),
                                                Text('Holerite',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white60,
                                                        fontSize: 15.0))
                                              ],
                                            ),
                                          ),
                                        ),

                                        //icon with label below it
                                      ])),
                            ),
                          ],
                        ),
                        Flexible(
                          child: Text(
                              "__________________________________________________________________________________________________\n \n",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.blueGrey[100], fontSize: 10.0)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                      margin: EdgeInsets.all(30),
                      height: 400.0,
                      width: 250.0,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        color: Colors.transparent.withOpacity(0.09),
                        border: Border.all(color: Colors.blueGrey, width: 0.2),
                        borderRadius: BorderRadius.circular(08),
                        /*    image: const DecorationImage(
                            image: AssetImage('assets/images/tst.png'),
                            fit: BoxFit.cover,
                          ), */
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 400,
                            width: 600,
                            child: TableCalendar(
                              locale: ("pt_BR"),
                              firstDay: kFirstDay,
                              lastDay: kLastDay,
                              focusedDay: _focusedDay,
                              calendarFormat: _calendarFormat,
                              selectedDayPredicate: (day) {
                                return isSameDay(_selectedDay, day);
                              },
                              onDaySelected: (selectedDay, focusedDay) {
                                if (!isSameDay(_selectedDay, selectedDay)) {
                                  // Call `setState()` when updating the selected day
                                  setState(() {
                                    _selectedDay = selectedDay;
                                    _focusedDay = focusedDay;
                                  });
                                }
                              },
                              onFormatChanged: (format) {
                                if (_calendarFormat != format) {
                                  // Call `setState()` when updating calendar format
                                  setState(() {
                                    _calendarFormat = format;
                                  });
                                }
                              },
                              onPageChanged: (focusedDay) {
                                // No need to call `setState()` here
                                _focusedDay = focusedDay;
                              },
                            ),
                          ),
                        ],
                      )),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 10.0,
                    ),
                    Text(
                        "Secretaria de Administração | Tecnlogia da Informação",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.blueGrey[100], fontSize: 20.0)),
                    Text(
                        "_______________________________________________________________________________\n",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.blueGrey[100], fontSize: 10.0)),

                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                            text: "Prefeitura Municipal de Santa Luzia - ",
                            style:
                                TextStyle(fontSize: 12, color: Colors.blueGrey),
                          ),
                          TextSpan(
                              text: "PMSL",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  var url =
                                      "https://www.santaluzia.mg.gov.br/v2/";
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Site não está disponível $url';
                                  }
                                }),
                        ])),
                    // Text(
                    //     "\n Secretaria de Administração | Tecnlogia da Informação \n\n tel: 31 3641- 5870 e-mail: informatica@santaluzia.mg.gov.br",
                    //     //"\n O portal do servidor, destinado a auxiliar o na promoção e execução dos serviços municipais\n  disponibilizamos os principais sistemas para atendimento ao munícipe e servidor.",
                    //     textAlign: TextAlign.center,
                    //     style: TextStyle(
                    //         color: Colors.blueGrey[100], fontSize: 10.0)),
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }

  void _ramaishURL() async => await canLaunch(_ramais)
      ? await launch(_ramais)
      : throw 'Site não está disponível $_ramais';

  void _chequelaunchURL() async => await canLaunch(_contra)
      ? await launch(_contra)
      : throw 'Site não está disponível $_contra';

  void _suporteunchURL() async => await canLaunch(_suporte)
      ? await launch(_suporte)
      : throw 'Site não está disponível $_suporte';

  void _emaillaunchURL() async => await canLaunch(_email)
      ? await launch(_email)
      : throw 'Site não está disponível $_email';
}
