import 'package:flutter/material.dart';
import 'package:flutter_p_shop/app.dart';
import 'package:flutter_p_shop/common/styles/shadows.dart';
import 'package:flutter_p_shop/common/widgets/icons/t_cirular_icon.dart';
import 'package:flutter_p_shop/common/widgets/images/rounded_container.dart';
import 'package:flutter_p_shop/common/widgets/images/t_rounded_image.dart';
import 'package:flutter_p_shop/common/widgets/texts/product_price_text.dart';
import 'package:flutter_p_shop/common/widgets/texts/product_title_text.dart';
import 'package:flutter_p_shop/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:flutter_p_shop/utils/constants/colors.dart';
import 'package:flutter_p_shop/utils/constants/image_strings.dart';
import 'package:flutter_p_shop/utils/constants/sizes.dart';
import 'package:flutter_p_shop/utils/helpers/helper_functions.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
        ),
        child: Column(
          children: [
            // Thubnail, Wishlist Button, Discount Tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  const TRoundedImage(
                      imageUrl: TImages.productImage1, applyImageRadius: true),
      
                  // -- Sale Tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),
      
                  // -- Favourite Icon Button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                        icon: Iconsax.heart,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2,),
      
            //Details
           const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(title: 'Green Nike Shoes', smallSize: true,),
                  SizedBox(height: TSizes.spaceBtwItems / 2,),               
                  TBrandTitleTextWithVerifiedIcon(title: 'Nike')
                ],
              ),
              ),
              
              // Todo: Add Spacer() here to keep the height of each Box same in case 1 or 2 lines of Headings 
                  const Spacer(),

                  // Price Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///Price
                      const Padding(
                        padding: EdgeInsets.only(left: TSizes.sm),
                        child: TProductPriceText(price: '350.000 ',),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomRight: Radius.circular(TSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(width: TSizes.iconLg * 1.2,height: TSizes.iconLg * 1.2,child: Center(child: Icon(Iconsax.add, color: TColors.white,))),
                      )
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const App());
}
