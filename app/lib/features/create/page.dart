import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constants/design.dart';
import 'ui/amount_input.dart';
import 'ui/confirm_button.dart';
import 'ui/name_input.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CreateView(),
      backgroundColor: Design.black600,
    );
  }
}

class CreateView extends StatelessWidget {
  const CreateView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 35,
      ),
      children: [
        Row(
          children: [
            BackButton(
              color: Design.white50,
              onPressed: () {
                if (context.canPop()) context.pop();
              },
            )
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Design.black500,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 1,
              ),
            ],
          ),
          child: const Column(
            children: [
              NameInput(),
              SizedBox(
                height: 12,
              ),
              AmountInput(),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const ConfirmButton()
      ],
    );
  }
}
