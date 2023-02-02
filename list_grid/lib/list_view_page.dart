import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 100,
      itemBuilder: (context, index) {
        return ListTile(
          title: SizedBox(
            height: 200,
            child: Card(
              child: Center(
                child: Text('Item ${index + 1}'),
              ),
            ),
          ),
        );
      },
    );
  }
}
