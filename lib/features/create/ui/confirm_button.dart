import 'package:flutter/material.dart';

import '../../../constants/design.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Design.blue600,
        foregroundColor: Colors.yellow,
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      ),
      onPressed: () {},
      child: const Text(
        'Confim',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Design.white50,
        ),
      ),
    );
  }
}
