import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/custom_button.dart';
import 'package:space_traders/components/popup.dart';

import 'package:space_traders/pages/contracts/contracts_page.dart';
import 'package:space_traders/pages/contracts/details_page.dart';

class MyContacts extends StatelessWidget {
  const MyContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        onPressed: () async {
          await context.read<HomeCubit>().viewContracts();
          if (context.mounted) {
            showDialog(
              context: context,
              builder: (context) => const CustomDialog(
                title: 'Contracts',
                child: SingleChildScrollView(
                  child: Stack(
                    children: [ContractsPage(), DetailsPage()],
                  ),
                ),
              ),
            );
          }
        },
        text: 'View contracts');
  }
}
