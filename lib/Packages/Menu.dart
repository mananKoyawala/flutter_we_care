import 'package:flutter/material.dart';

class CustomPopupMenuButton extends StatelessWidget {
  final List<String> items;
  final Function(String) onSelected;

  CustomPopupMenuButton({required this.items, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: onSelected,
      itemBuilder: (BuildContext context) {
        return items.map((String item) {
          return PopupMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList();
      },
    );
  }
}
