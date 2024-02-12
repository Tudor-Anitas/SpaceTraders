import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/app_bar.dart';
import 'package:space_traders/components/custom_button.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/models/faction.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var controller = TextEditingController();
  var selectedFaction = FactionSymbol.COSMIC;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 'Register'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Name your character'),
          const SizedBox(
            height: Sizes.medium,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Expanded(flex: 10, child: SizedBox()),
                  Expanded(
                    flex: 80,
                    child: TextFormField(
                      controller: controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        label: const Text('Your name'),
                      ),
                    ),
                  ),
                  const Expanded(flex: 10, child: SizedBox()),
                ],
              ),
              const SizedBox(
                height: Sizes.small,
              ),
              DropdownMenu(
                label: const Text('Faction'),
                onSelected: (value) {
                  setState(() {
                    selectedFaction = value!;
                  });
                },
                dropdownMenuEntries: [
                  for (var faction in FactionSymbol.values)
                    DropdownMenuEntry(value: faction, label: faction.name)
                ],
              ),
              const SizedBox(
                height: Sizes.small,
              ),
              CustomButton(
                text: 'Register',
                onPressed: () async {
                  bool isRegistered = await context
                      .read<HomeCubit>()
                      .register(controller.text, selectedFaction);

                  if (isRegistered && context.mounted) {
                    context.pop();
                  }
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
