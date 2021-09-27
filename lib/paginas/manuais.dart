import 'package:flutter/material.dart';

/// This Widget is the main application widget.
// ignore: use_key_in_widget_constructors
mixin manua implements StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portal do Servidor',
    );
  }
}

class manuais extends StatefulWidget {
  const manuais({Key? key}) : super(key: key);

  @override
  _manuaisState createState() => _manuaisState();
}

class _manuaisState extends State<manuais> {
  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.blueGrey[900],
        );
  }
}
