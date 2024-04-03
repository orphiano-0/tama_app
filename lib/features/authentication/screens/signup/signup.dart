import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tama_app/common/widgets/login_signup/form_divider.dart';
import 'package:tama_app/common/widgets/login_signup/social_buttons.dart';
import 'package:tama_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:tama_app/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:tama_app/utils/constants/sizes.dart';
import 'package:tama_app/utils/constants/text_strings.dart';
import 'package:tama_app/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Form
              const TSignUpForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Social Buttons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

