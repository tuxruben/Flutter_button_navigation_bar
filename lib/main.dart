import 'package:button_navigation_bar/pages/paginaHome.dart';
import 'package:button_navigation_bar/pages/paginaUsers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaActual = 0;
  List<Widget> _paginas = [paginaHome(), paginaUsers()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _paginaActual,
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: "User")
          ],
        ),
      ),
    );
  }
}
