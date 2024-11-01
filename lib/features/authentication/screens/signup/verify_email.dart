import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_p_shop/common/widgets/success_screen/success_screen.dart';
import 'package:flutter_p_shop/features/authentication/screens/login/login/login.dart';
import 'package:flutter_p_shop/utils/constants/image_strings.dart';
import 'package:flutter_p_shop/utils/constants/sizes.dart';
import 'package:flutter_p_shop/utils/constants/text_strings.dart';
import 'package:flutter_p_shop/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class VerifyEmailScreen  extends StatelessWidget {
  const VerifyEmailScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Image 
              Image(image: const AssetImage(TImages.deliveredEmailIllustration), width: THelperFunctions.srceenWidth() * 0.6,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //Title & SubTitle
              Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,), 
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text('supportphuctran@gmail.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              //Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const SuccessScreen()) , child: const Text(TTexts.tContinue))),
              const SizedBox(height: TSizes.spaceBtwItems,),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(TTexts.resendEmail)),)
            ],
          ),
        ),
      ),
    );
  }
}