import 'package:flutter/material.dart';

class Menus extends StatefulWidget {
  const Menus({super.key});

  @override
  State<Menus> createState() => MenusState();

}

class MenusState extends State<Menus> {
  List<String> items = <String>[
    "Item1",
    "Item2",
    "Item3",
    "Item4",
    "Item5",
    "Item6",
    "Item7",
    "Item8",
    "Item9",
    "Item10"
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
            title: Text('${items[index]}'),
            onLongPress: () {
              setState(() {
                items.removeAt(index);
              });
            });
      },
    );
  }
}
