import 'package:flutter/widgets.dart';
import 'package:space_traders/app_colors.dart';
import 'package:space_traders/components/sizes.dart';

class CustomSpacer extends StatelessWidget {
  const CustomSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: Spacing.medium,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 2,
              width: 30,
              color: AppColors.white,
            ),
          ],
        ),
        const SizedBox(
          height: Spacing.medium,
        ),
      ],
    );
  }
}
