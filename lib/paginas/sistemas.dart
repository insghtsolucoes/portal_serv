import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

mixin sistema implements StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portal do Servidor',
    );
  }
}

class sistemas extends StatefulWidget {
  const sistemas({Key? key}) : super(key: key);

  @override
  _sistemasState createState() => _sistemasState();
}

class _sistemasState extends State<sistemas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  padding: EdgeInsets.all(12.0),
                  alignment: Alignment.topRight,
                  child: Text(
                    'Central de Aplicações do Servidor Municipal',
                    style:
                        TextStyle(color: Colors.blueGrey[100], fontSize: 12.0),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: const Icon(Icons.email_outlined),
                                  title: const Text('Desbloqueio de E-mail'),
                                  subtitle: const Text(
                                      'Módo do Sogo para desbloqueio de e-mails em quarentena'),
                                ),
                                ButtonTheme(
                                  // make buttons use the appropriate styles for cards
                                  child: new ButtonBar(
                                    children: <Widget>[
                                      new FlatButton(
                                        child: const Text('Acessar >>'),
                                        onPressed: desbloqueio,
                                      ),
                                      // new FlatButton(
                                      //   child: const Text('Manual'),
                                      //   onPressed: () {/* ... */},
                                      // ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: const Icon(Icons.email_rounded),
                                  title: const Text('E-mail'),
                                  subtitle: const Text(
                                      'E-mail cooporativo do servidor municipal'),
                                ),
                                ButtonTheme(
                                  // make buttons use the appropriate styles for cards
                                  child: new ButtonBar(
                                    children: <Widget>[
                                      new FlatButton(
                                        child: const Text('Acessar'),
                                        onPressed: email,
                                      ),
                                      new FlatButton(
                                        child: const Text('Manual'),
                                        onPressed: manualemail,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: const Icon(
                                      Icons.account_balance_wallet_rounded),
                                  title: const Text('Contra Cheque'),
                                  subtitle: const Text(
                                      'Módulo do ERP para visualização do contra cheque'),
                                ),
                                ButtonTheme(
                                  // make buttons use the appropriate styles for cards
                                  child: new ButtonBar(
                                    children: <Widget>[
                                      new FlatButton(
                                        child: const Text('Acessar >>'),
                                        onPressed: holerite,
                                      ),
                                      // new FlatButton(
                                      //   child: const Text('Manual'),
                                      //   onPressed: () {/* ... */},
                                      // ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: const Icon(Icons.microwave_rounded),
                                  title: const Text('ISS - Digital'),
                                  subtitle: const Text(
                                      'Sistema de emissão da nota fiscal eletrônica de serviços'),
                                ),
                                ButtonTheme(
                                  // make buttons use the appropriate styles for cards
                                  child: new ButtonBar(
                                    children: <Widget>[
                                      new FlatButton(
                                        child: const Text('Acessar >>'),
                                        onPressed: issdig,
                                      ),
                                      new FlatButton(
                                        child: const Text('Manual'),
                                        onPressed: () {/* ... */},
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: const Icon(
                                      Icons.app_registration_outlined),
                                  title: const Text('Protocolo Web'),
                                  subtitle: const Text(
                                      'Sistema de gestão do protocolo'),
                                ),
                                ButtonTheme(
                                  // make buttons use the appropriate styles for cards
                                  child: new ButtonBar(
                                    children: <Widget>[
                                      new FlatButton(
                                        child: const Text('Acessar >>'),
                                        onPressed: protocolo,
                                      ),
                                      // new FlatButton(
                                      //   child: const Text('Manual'),
                                      //   onPressed: () {/* ... */},
                                      // ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: const Icon(Icons.add_chart_outlined),
                                  title: const Text('Open Project'),
                                  subtitle: const Text(
                                      'Sistema de gestão de projetos'),
                                ),
                                ButtonTheme(
                                  // make buttons use the appropriate styles for cards
                                  child: new ButtonBar(
                                    children: <Widget>[
                                      new FlatButton(
                                        child: const Text('Acessar >>'),
                                        onPressed: projetos,
                                      ),
                                      // new FlatButton(
                                      //   child: const Text('LISTAR'),
                                      //   onPressed: () {/* ... */},
                                      // ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: const Icon(Icons.phone_callback),
                                  title: const Text('Lista de Ramais'),
                                  subtitle: const Text(
                                      'Acesso a lista de ramais da Prefeitura Municipal'),
                                ),
                                ButtonTheme(
                                  // make buttons use the appropriate styles for cards
                                  child: new ButtonBar(
                                    children: <Widget>[
                                      new FlatButton(
                                        child: const Text('Acessar >>'),
                                        onPressed: Ramais,
                                      ),
                                      // new FlatButton(
                                      //   child: const Text('LISTAR'),
                                      //   onPressed: () {/* ... */},
                                      // ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading:
                                      const Icon(Icons.support_agent_sharp),
                                  title: const Text('GLPI - Suporte'),
                                  subtitle: const Text(
                                      'Sistema de gestão dos chamados atendidos pelo Tecnologia da Informação'),
                                ),
                                ButtonTheme(
                                  // make buttons use the appropriate styles for cards
                                  child: new ButtonBar(
                                    children: <Widget>[
                                      new FlatButton(
                                        child: const Text('Acessar >>'),
                                        onPressed: Suporte,
                                      ),
                                      new FlatButton(
                                        child: const Text('LISTAR'),
                                        onPressed: manualsuporte,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ]),
          )
        ],
      ),
    );
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

  sislame() async {
    const url = 'https://www.sislamemg.caedufjf.net/sislamemg/login.faces';

    await launch(url);
  }

  issdig() async {
    const url = 'https://iss2.santaluzia.mg.gov.br/iss-web';

    await launch(url);
  }

  protocolo() async {
    const url = 'http://sistemas.santaluzia.mg.gov.br:8080/protocolo/';

    await launch(url);
  }

  projetos() async {
    const url = 'https://gestaoprojetos.santaluzia.mg.gov.br/';

    await launch(url);
  }

  desbloqueio() async {
    const url = 'https://quarentena.santaluzia.mg.gov.br:8006/quarantine';

    await launch(url);
  }

  manualsuporte() async {
    const url =
        'https://www.santaluzia.mg.gov.br/v2/wp-content/uploads/2020/10/Manual-Usuario-GLPI-v1.2-1.pdf';

    await launch(url);
  }

  manualemail() async {
    const url =
        'https://www.santaluzia.mg.gov.br/v2/wp-content/uploads/2019/10/manualemailv1.pdf';

    await launch(url);
  }
}
