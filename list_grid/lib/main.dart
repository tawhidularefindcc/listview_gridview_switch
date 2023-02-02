import 'package:flutter/material.dart';
import 'package:list_grid/grid_view_page.dart';
import 'package:list_grid/list_view_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isListView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('Switching between ListView and GridView'),
        actions: <Widget>[
          IconButton(
            icon:
                isListView ? const Icon(Icons.grid_on) : const Icon(Icons.list),
            onPressed: () {
              setState(() {
                isListView = !isListView;
              });
            },
          )
        ],
      ),
      body: isListView ? const ListViewPage() : const GridViewPage(),
    );
  }
}
