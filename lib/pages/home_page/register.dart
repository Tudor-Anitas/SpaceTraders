import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:space_traders/blocs/home/home_cubit.dart';
import 'package:space_traders/components/app_bar.dart';
import 'package:space_traders/components/custom_button.dart';
import 'package:space_traders/components/sizes.dart';
import 'package:space_traders/components/unfocus.dart';
import 'package:space_traders/contants.dart';
import 'package:space_traders/methods/validators.dart';
import 'package:space_traders/methods/widget_keys.dart';
import 'package:space_traders/models/faction.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var controller = TextEditingController();
  var selectedFaction = FactionSymbol.COSMIC;
  var isRegistered = false;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Unfocus(
      child: Scaffold(
        appBar: customAppBar(context, 'Register'),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Name your character'),
            const SizedBox(
              height: Spacing.medium,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: formKey,
                  child: Row(
                    children: [
                      const Expanded(flex: 10, child: SizedBox()),
                      Expanded(
                        flex: 80,
                        child: TextFormField(
                          key: WidgetKeys.nameField,
                          controller: controller,
                          validator: nameValidator,
                          maxLength: Constants.registerMaxLength,
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
                ),
                const SizedBox(
                  height: Spacing.small,
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
                  height: Spacing.small,
                ),
                CustomButton(
                  key: WidgetKeys.completeRegisterButton,
                  text: 'Register',
                  onPressed: () async {
                    try {
                      isRegistered = await context
                          .read<HomeCubit>()
                          .register(context, controller.text, selectedFaction);
                      if (isRegistered && context.mounted) {
                        context.pop();
                      } else if (!isRegistered) {
                        formKey.currentState?.validate();
                      }
                    } catch (e) {
                      formKey.currentState?.validate();
                    }
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
