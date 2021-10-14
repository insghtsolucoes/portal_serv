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

class homephone extends StatefulWidget {
  const homephone({Key? key}) : super(key: key);

  @override
  _homephoneState createState() => _homephoneState();
}

class _homephoneState extends State<homephone> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_, constraints) => Scaffold(
              resizeToAvoidBottomInset: false,
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    expandedHeight: 260,
                    elevation: 14,
                    flexibleSpace: Stack(
                      children: [
                        Positioned.fill(
                            child: Image.asset(
                          "assets/images/dark.jpeg",
                          fit: BoxFit.cover,
                        )),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          alignment: Alignment.topRight,
                          child: Text(
                            'Central de Aplicações do Servidor Municipal',
                            style: TextStyle(
                                color: Colors.blueGrey[100], fontSize: 12.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate([
                      Container(
                        margin: EdgeInsets.all(30),
                        height: 250.0,
                        width: 20,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.transparent.withOpacity(0.09),
                          border:
                              Border.all(color: Colors.blueGrey, width: 0.2),
                          borderRadius: BorderRadius.circular(08),
                          /*    image: const DecorationImage(
                          image: AssetImage('assets/images/tst.png'),
                          fit: BoxFit.cover,
                        ), */
                        ),
                        child: Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text("\n \n ",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.blueGrey[100],
                                              fontSize: 10.0)),
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: FlatButton(
                                          textColor: Colors.blueGrey,
                                          minWidth: 0.01,
                                          height: 0.01,
                                          highlightColor: Colors.purple,
                                          hoverColor: Colors.amber[600],
                                          focusColor: Colors.amber,
                                          splashColor: Colors.grey,
                                          disabledColor: Colors.amber[400],
                                          onPressed: Suporte,
                                          child: Flexible(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              0.0),
                                                      child: Flexible(
                                                        child: Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Icon(
                                                            Icons
                                                                .support_agent_sharp,
                                                            size: 70.0,
                                                            color:
                                                                Colors.white60,
                                                          ),
                                                        ),
                                                      )),
                                                ),
                                                Text('Suporte',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white60,
                                                        fontSize: 15.0))
                                              ],
                                            ),
                                          )),
                                    ),
                                    Flexible(
                                      child: FlatButton(
                                          textColor: Colors.blueGrey,
                                          minWidth: 0.01,
                                          height: 0.01,
                                          highlightColor: Colors.purple,
                                          hoverColor: Colors.amber[600],
                                          focusColor: Colors.amber,
                                          splashColor: Colors.grey,
                                          disabledColor: Colors.amber[400],
                                          onPressed: email,
                                          child: Flexible(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              0.0),
                                                      child: Flexible(
                                                        child: Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Icon(
                                                            Icons.email,
                                                            size: 70.0,
                                                            color:
                                                                Colors.white60,
                                                          ),
                                                        ),
                                                      )),
                                                ),
                                                Text('E-mail',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white60,
                                                        fontSize: 15.0))
                                              ],
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                        "________________________________________________________\n \n ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.blueGrey[100],
                                            fontSize: 10.0)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(30),
                        height: 250.0,
                        width: 20,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.transparent.withOpacity(0.09),
                          border:
                              Border.all(color: Colors.blueGrey, width: 0.2),
                          borderRadius: BorderRadius.circular(08),
                          /*    image: const DecorationImage(
                          image: AssetImage('assets/images/tst.png'),
                          fit: BoxFit.cover,
                        ), */
                        ),
                        child: Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Text("\n \n ",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.blueGrey[100],
                                              fontSize: 10.0)),
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: FlatButton(
                                          textColor: Colors.blueGrey,
                                          minWidth: 0.01,
                                          height: 0.01,
                                          highlightColor: Colors.purple,
                                          hoverColor: Colors.amber[600],
                                          focusColor: Colors.amber,
                                          splashColor: Colors.grey,
                                          disabledColor: Colors.amber[400],
                                          onPressed: Ramais,
                                          child: Flexible(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              0.0),
                                                      child: Flexible(
                                                        child: Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Icon(
                                                            Icons
                                                                .phone_callback,
                                                            size: 70.0,
                                                            color:
                                                                Colors.white60,
                                                          ),
                                                        ),
                                                      )),
                                                ),
                                                Text('Ramais',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white60,
                                                        fontSize: 15.0))
                                              ],
                                            ),
                                          )),
                                    ),
                                    Flexible(
                                      child: FlatButton(
                                          textColor: Colors.blueGrey,
                                          minWidth: 0.01,
                                          height: 0.01,
                                          highlightColor: Colors.purple,
                                          hoverColor: Colors.amber[600],
                                          focusColor: Colors.amber,
                                          splashColor: Colors.grey,
                                          disabledColor: Colors.amber[400],
                                          onPressed: holerite,
                                          child: Flexible(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              0.0),
                                                      child: Flexible(
                                                        child: Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Icon(
                                                            Icons
                                                                .app_registration,
                                                            size: 70.0,
                                                            color:
                                                                Colors.white60,
                                                          ),
                                                        ),
                                                      )),
                                                ),
                                                Text('Holerite',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white60,
                                                        fontSize: 15.0))
                                              ],
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                        "________________________________________________________\n \n ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.blueGrey[100],
                                            fontSize: 10.0)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: SizedBox(
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
                            )
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 10.0,
                          ),
                          Text(
                              "Secretaria de Administração | Tecnologia da Informação",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.blueGrey[100], fontSize: 20.0)),

                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                                "_______________________________________________________________________________\n",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.blueGrey[100],
                                    fontSize: 10.0)),
                          ),

                          RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(children: [
                                TextSpan(
                                  text:
                                      "Prefeitura Municipal de Santa Luzia - ",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blueGrey),
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
            ));
  }

  Suporte() async {
    const url = 'https://glpi.santaluzia.mg.gov.br/';

    await launch(url);
  }

  email() async {
    const url = 'https://webmail.santaluzia.mg.gov.br/SOGo/so/';

    await launch(url);
  }

  Ramais() async {
    const url = 'http://10.1.0.16:3002/';

    await launch(url);
  }

  holerite() async {
    const url =
        'https://portaldofuncionario.santaluzia.mg.gov.br/portalfuncionario/login.xhtml';

    await launch(url);
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
