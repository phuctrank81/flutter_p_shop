import 'package:flutter/material.dart';
import 'package:flutter_p_shop/common/styles/widgets.login_signup/form_divider.dart';
import 'package:flutter_p_shop/common/styles/widgets.login_signup/social_buttons.dart';
import 'package:flutter_p_shop/features/authentication/screens/signup.widgets/signup_form.dart';
import 'package:flutter_p_shop/utils/constants/colors.dart';
import 'package:flutter_p_shop/utils/constants/sizes.dart';
import 'package:flutter_p_shop/utils/constants/text_strings.dart';
import 'package:flutter_p_shop/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Form
              const TSignupForm(),
              //Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //Social Buttons
              const TSocialButtons(),
              
            ],
          ),
        ),
      ),
    );
  }
}


