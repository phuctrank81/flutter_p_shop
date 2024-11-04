import 'package:flutter/material.dart';
import 'package:flutter_p_shop/common/widgets/texts/section_heading.dart';
import 'package:flutter_p_shop/features/authentication/screens/home/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:flutter_p_shop/features/authentication/screens/home/widgets/custom_shapes/container/search_container.dart';
import 'package:flutter_p_shop/features/authentication/screens/home/widgets/home_appbar.dart';
import 'package:flutter_p_shop/utils/constants/colors.dart';
import 'package:flutter_p_shop/utils/constants/image_strings.dart';
import 'package:flutter_p_shop/utils/constants/sizes.dart';
import 'package:flutter_p_shop/utils/device/device_utility.dart';
import 'package:flutter_p_shop/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          //Header -- Tutorial [Section # 3, Video # 2]
          TPrimaryHeaderContainer(
              child: Column(
            children: [
              /// --Appbar -- Tutorial [Section #3, Video # 3]
              const THomeAppBar(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// -- Searchbar -- Tutorial [Section # 3, Video # 4]
              const TSearchContainer(text: 'Search  in Store',),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// -- Categories -- Tutorial [Section # 3, Video # 4]
              Padding(
                padding: const EdgeInsets.only(
                  left: TSizes.defaultSpace 
                ),
                child: Column(
                  children: [

                    //Heading
                    const TSectionHeading(title: 'Popular Categories', showActionButton: false,),
                    const SizedBox(height: TSizes.spaceBtwItems,),

                    //Categories
                    SizedBox(
                      height: 80,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        scrollDirection: Axis.horizontal ,
                        itemBuilder: (_, index){
                          return Column(
                            children: [
                              Container(
                                width: 56,
                                height: 56,
                                padding:const EdgeInsets.all(TSizes.md),
                                decoration: BoxDecoration(
                                  color: TColors.white,
                                  borderRadius: BorderRadius.circular(100)
                                ),
                                child: Center(
                                  child: Image(image: AssetImage(TImages.staticSuccessIllustration),fit: BoxFit.cover, color: TColors.dark,),
                                ),
                              )
                            ],
                          );
                        },),
                    )
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    ));
  }
}




