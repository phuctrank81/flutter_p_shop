import 'package:flutter/material.dart';
import 'package:flutter_p_shop/common/widgets/appbar/appbar.dart';
import 'package:flutter_p_shop/common/widgets/products/cart_menu_icon.dart';
import 'package:flutter_p_shop/common/widgets/texts/section_heading.dart';
import 'package:flutter_p_shop/features/authentication/screens/home/widgets/custom_shapes/container/search_container.dart';
import 'package:flutter_p_shop/utils/constants/colors.dart';
import 'package:flutter_p_shop/utils/constants/sizes.dart';
import 'package:flutter_p_shop/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCartCounterIcon(onPressed: (){}, iconColor: Colors.white,)
        ],
      ),
      body: NestedScrollView(headerSliverBuilder: (_, inerBoxIsScrolled) {
        return [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white,
            expandedHeight: 440,

            flexibleSpace: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  // -- Search bar
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const TSearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero,),
                  const SizedBox(height: TSizes.spaceBtwSections,), 

                  /// -- Featured Brands
                  TSectionHeading(title: 'Featured Brands', onPressed: (){}),
                  const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                ],
              ),
            ),
          ),
        ];
      }, body: Container()),
    );
  }
}