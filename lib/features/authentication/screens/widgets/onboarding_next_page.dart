import 'package:flutter/material.dart';
import 'package:flutter_p_shop/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter_p_shop/utils/constants/colors.dart';
import 'package:flutter_p_shop/utils/constants/sizes.dart';
import 'package:flutter_p_shop/utils/device/device_utility.dart';
import 'package:flutter_p_shop/utils/helpers/helper_functions.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';


class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () =>  OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: dark ?TColors.primary: Colors.black),
        child: const Icon(Iconsax.arrow_right_1),
      )
      );
  }
}