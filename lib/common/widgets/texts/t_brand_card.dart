import 'package:flutter/material.dart';
import 'package:flutter_p_shop/common/widgets/images/rounded_container.dart';
import 'package:flutter_p_shop/common/widgets/images/t_circular_image.dart';
import 'package:flutter_p_shop/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:flutter_p_shop/utils/constants/colors.dart';
import 'package:flutter_p_shop/utils/constants/enums.dart';
import 'package:flutter_p_shop/utils/constants/image_strings.dart';
import 'package:flutter_p_shop/utils/constants/sizes.dart';
import 'package:flutter_p_shop/utils/helpers/helper_functions.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    this.onTap,
    required this.showBorder,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      // Container Design
      child: TRoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(TSizes.sm),         
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// -- Icon
            Flexible(
              child: TCircularImage(
                isNetworkImage: false,
                image: TImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor:
                    THelperFunctions.isDarkMode(context)
                        ? TColors.white
                        : TColors.black,
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),
    
            // -- Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  const TBrandTitleTextWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(
                            color: TColors.darkGrey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}