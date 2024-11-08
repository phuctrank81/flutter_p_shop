import 'package:flutter/material.dart';
import 'package:flutter_p_shop/common/widgets/texts/section_heading.dart';
import 'package:flutter_p_shop/features/authentication/screens/home/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:flutter_p_shop/features/authentication/screens/home/widgets/custom_shapes/container/search_container.dart';
import 'package:flutter_p_shop/features/authentication/screens/home/widgets/home_appbar.dart';
import 'package:flutter_p_shop/features/authentication/screens/home/widgets/home_categories.dart';
import 'package:flutter_p_shop/features/authentication/screens/home/widgets/promo_slider.dart';
import 'package:flutter_p_shop/utils/constants/image_strings.dart';
import 'package:flutter_p_shop/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          //Header -- Tutorial [Section # 3, Video # 2]
          const TPrimaryHeaderContainer(
            child: Column(
              children: [
                /// --Appbar -- Tutorial [Section #3, Video # 3]
                THomeAppBar(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// -- Searchbar -- Tutorial [Section # 3, Video # 4]
                TSearchContainer(
                  text: 'Search  in Store',
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// -- Categories -- Tutorial [Section # 3, Video # 4]
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      //Heading
                      TSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      //Categories
                      THomeCategories()
                    ],
                  ),
                )
              ],
            ),
          ),

          //Body -- Tutorial [Section # 3, Video # 5]
          Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: TPromoSlider(banners: [TImages.promoBanner1,TImages.promoBanner2,TImages.promoBanner3]),
          ),
        ],
      ),
    ));
  }
}




