import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String? dropdownValue;
  final List<String> list;
  final ValueChanged<String?> onChanged;

  const CustomDropdown({
    super.key,
    required this.dropdownValue,
    required this.list,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: const Text('Pilih jurusan'),
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: onChanged,
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}