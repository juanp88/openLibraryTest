import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodel/register_view_model.dart';

class DropDown extends StatelessWidget {
  DropDown({Key? key}) : super(key: key);

  var items = [
    'Masculino',
    'Femenino',
    'Otro',
  ];

  @override
  Widget build(BuildContext context) {
    final registerProvider =
        Provider.of<RegisterViewModel>(context, listen: true);
    String dropDownValue = registerProvider.gender;

    return DropdownButton(
      // Initial Value
      value: dropDownValue,

      // Down Arrow Icon
      icon: const Icon(Icons.keyboard_arrow_down),

      // Array list of items
      items: items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      // After selecting the desired option,it will
      // change button value to selected value
      onChanged: (String? newValue) {
        registerProvider.setGender(newValue!);
      },
    );
  }
}
