import 'package:flutter/material.dart';
import 'package:space_traders/components/app_bar.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/pages/contracts/contracts_page.dart';

class MyContracts extends StatelessWidget {
  const MyContracts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 'Contracts'),
      body: const Padding(
        padding: EdgeInsets.all(Sizes.medium),
        child: SingleChildScrollView(
          child: ContractsPage(),
        ),
      ),
    );
  }
}
