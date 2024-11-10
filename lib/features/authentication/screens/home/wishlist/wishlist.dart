import 'package:flutter/material.dart';
import 'package:flutter_p_shop/common/widgets/appbar/appbar.dart';
import 'package:flutter_p_shop/common/widgets/icons/t_cirular_icon.dart';
import 'package:flutter_p_shop/common/widgets/layouts/grid_layout.dart';
import 'package:flutter_p_shop/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter_p_shop/features/authentication/screens/home/home.dart';
import 'package:flutter_p_shop/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({
    super.key
    
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Wishlist', style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          TCircularIcon(
            icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                itemCount: 6,
                itemBuilder: (_, index) => const TProductCardVertical(),
              )
            ],
          ),
        ),
      ),
    );
  }
}