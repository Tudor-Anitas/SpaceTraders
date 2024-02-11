import 'package:flutter/material.dart';

class ErrorWidget extends StatelessWidget {
  final Errors error;
  const ErrorWidget({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        error.value,
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(color: Colors.red),
      ),
    );
  }
}

enum Errors {
  unauthorized('You have to register first!');

  const Errors(this.value);
  final String value;
}
