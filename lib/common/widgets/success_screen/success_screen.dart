import 'package:flutter/material.dart';
import 'package:flutter_p_shop/common/styles/spcaing_styles.dart';
import 'package:flutter_p_shop/features/authentication/screens/login/login/login.dart';
import 'package:flutter_p_shop/utils/constants/image_strings.dart';
import 'package:flutter_p_shop/utils/constants/sizes.dart';
import 'package:flutter_p_shop/utils/constants/text_strings.dart';
import 'package:flutter_p_shop/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpcaingStyles.paddingWithAppBarHeight * 2,
          child: Column(
            //Image
            children: [
              Image(image: const AssetImage(TImages.deliveredEmailIllustration), width: THelperFunctions.srceenWidth() * 0.6,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //Title & SubTitle
              Text(TTexts.yourAccountCreatedTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,), 
              const SizedBox(height: TSizes.spaceBtwItems,),                         
              Text(TTexts.yourAccountCreatedSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,),       

              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const LoginScreen()), child: const Text(TTexts.tContinue))),      
            ],

          ),
        ),
      ),
    );
  }
}