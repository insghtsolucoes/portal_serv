import 'package:flutter/material.dart';
import 'package:portal_serv/paginas/home_phone.dart';
import 'package:portal_serv/paginas/home_web.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.maxWidth);
        if (constraints.maxWidth < 800) {
          return homephone();
        } else {
          return homeweb();
        }
      },
    ));
  }
}
