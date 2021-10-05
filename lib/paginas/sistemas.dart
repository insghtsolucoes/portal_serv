import 'package:flutter/material.dart';

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
                  "assets/images/banner.png",
                  fit: BoxFit.cover,
                )),
                Container(
                  padding: EdgeInsets.all(16.0),
                  alignment: Alignment.topRight,
                  child: Text(
                    'Central de Aplicações do Servidor Municipal',
                    style:
                        TextStyle(color: Colors.blueGrey[100], fontSize: 20.0),
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
                                  leading: const Icon(Icons.phone_callback),
                                  title: const Text('Lista de Ramais'),
                                  subtitle: const Text(
                                      'Será listado ramais das secretarias, unidades e departamentos'),
                                ),
                                ButtonTheme(
                                  // make buttons use the appropriate styles for cards
                                  child: new ButtonBar(
                                    children: <Widget>[
                                      new FlatButton(
                                        child: const Text('CLIQUE PARA LISTAR'),
                                        onPressed: () {/* ... */},
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
                                      Icons.account_balance_wallet_rounded),
                                  title: const Text('Lista de Ramais'),
                                  subtitle: const Text(
                                      'Será listado ramais das secretarias, unidades e departamentos'),
                                ),
                                ButtonTheme(
                                  // make buttons use the appropriate styles for cards
                                  child: new ButtonBar(
                                    children: <Widget>[
                                      new FlatButton(
                                        child: const Text('CLIQUE PARA LISTAR'),
                                        onPressed: () {/* ... */},
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
                                  leading:
                                      const Icon(Icons.support_agent_sharp),
                                  title: const Text('GLPI - Suporte'),
                                  subtitle: const Text(
                                      'Sistema de gestão dos chamados atendidos pelo Tecnologia da Informação '),
                                ),
                                ButtonTheme(
                                  // make buttons use the appropriate styles for cards
                                  child: new ButtonBar(
                                    children: <Widget>[
                                      new FlatButton(
                                        child:
                                            const Text('CLIQUE PARA ACESSAR'),
                                        onPressed: () {/* ... */},
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
                                  leading:
                                      const Icon(Icons.account_tree_outlined),
                                  title: const Text('Projetos'),
                                  subtitle: const Text(
                                      'Sistema de Gestão dos Projetos'),
                                ),
                                ButtonTheme(
                                  // make buttons use the appropriate styles for cards
                                  child: new ButtonBar(
                                    children: <Widget>[
                                      new FlatButton(
                                        child:
                                            const Text('CLIQUE PARA ACESSAR'),
                                        onPressed: () {/* ... */},
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
                                  leading: const Icon(Icons.phone_callback),
                                  title: const Text('Desbloqueio de E-mail'),
                                  subtitle: const Text(
                                      'Módo do Sogo para desbloqueio de e-mails em quarentena'),
                                ),
                                ButtonTheme(
                                  // make buttons use the appropriate styles for cards
                                  child: new ButtonBar(
                                    children: <Widget>[
                                      new FlatButton(
                                        child:
                                            const Text('CLIQUE PARA ACESSAR'),
                                        onPressed: () {/* ... */},
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
                                  leading: const Icon(Icons.phone_callback),
                                  title: const Text('Contra Cheque'),
                                  subtitle: const Text(
                                      'Módulo do Supernova para consultas aos contra cheques'),
                                ),
                                ButtonTheme(
                                  // make buttons use the appropriate styles for cards
                                  child: new ButtonBar(
                                    children: <Widget>[
                                      new FlatButton(
                                        child:
                                            const Text('CLIQUE PARA ACESSAR'),
                                        onPressed: () {/* ... */},
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
                    ],
                  )),
            ]),
          )
        ],
      ),
    );
  }
}
