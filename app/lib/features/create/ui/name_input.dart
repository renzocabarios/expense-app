import 'package:flutter/material.dart';
import 'package:wealth_weaver/constants/design.dart';

class NameInput extends StatelessWidget {
  const NameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                6.0,
              ),
            ),
            hintStyle: const TextStyle(fontSize: 12.0, color: Design.white700),
            labelStyle: const TextStyle(fontSize: 12.0, color: Design.white50),
            labelText: 'Expense Name',
            hintText: 'Enter expense name',
          ),
        ),
      ],
    );
  }
}
