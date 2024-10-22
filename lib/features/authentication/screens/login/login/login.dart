import 'package:flutter/material.dart';
import 'package:flutter_p_shop/app.dart';
import 'package:flutter_p_shop/common/styles/spcaing_styles.dart';
import 'package:flutter_p_shop/common/styles/widgets.login_signup/form_divider.dart';
import 'package:flutter_p_shop/common/styles/widgets.login_signup/social_buttons.dart';
import 'package:flutter_p_shop/features/authentication/screens/login/login/login_form.dart';
import 'package:flutter_p_shop/features/authentication/screens/login/login/login_header.dart';
import 'package:flutter_p_shop/utils/constants/colors.dart';
import 'package:flutter_p_shop/utils/constants/image_strings.dart';
import 'package:flutter_p_shop/utils/constants/sizes.dart';
import 'package:flutter_p_shop/utils/constants/text_strings.dart';
import 'package:flutter_p_shop/utils/helpers/helper_functions.dart';
import 'package:flutter_p_shop/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
  final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpcaingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              const TLoginHeader(),

              const TLoginForm(),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}








