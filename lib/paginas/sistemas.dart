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
    return Container();
  }
}
