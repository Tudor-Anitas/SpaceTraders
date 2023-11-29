import 'package:flutter/material.dart';
import 'package:space_traders/components/custom_button.dart';
import 'package:space_traders/components/popup.dart';
import 'package:space_traders/components/sizes.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        onPressed: () async {
          if (context.mounted) {
            return showDialog(
              context: context,
              builder: (context) => CustomDialog(
                title: 'My character',
                child: Column(
                  children: [
                    const Expanded(
                        flex: 10, child: Text('Name your character')),
                    Expanded(
                      flex: 90,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: Sizes.space_10,
                          ),
                          CustomButton(text: 'Register', onPressed: () {}),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }
        },
        text: 'Register');
  }
}
