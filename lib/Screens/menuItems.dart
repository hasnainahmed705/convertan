import 'package:flutter/material.dart';

class DropdownMenuItems {
  static List<DropdownMenuItem<String>> getMenuItems(String? selectedMenu) {
    return [
      DropdownMenuItem<String>(
        value: '1',
        onTap: () {},
        child: Text(
          'PDF to WORD',
          style: TextStyle(
              color: selectedMenu == '1' ? Colors.black : Colors.blue.shade700),
        ),
      ),
    ];
  }
}
