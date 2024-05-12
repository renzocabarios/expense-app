import 'package:flutter/material.dart';

import '../../../constants/design.dart';

class AmountInput extends StatelessWidget {
  const AmountInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          keyboardType: TextInputType.number,
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
            labelText: 'Amount',
            hintText: 'Enter expense amount/cost',
          ),
        ),
      ],
    );
  }
}
