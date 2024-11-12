import 'package:flutter/material.dart';
import 'package:flutter_p_shop/features/authentication/screens/home/widgets/curved_edges/curved_edges_widget.dart';
import 'package:flutter_p_shop/utils/constants/colors.dart';
import 'package:flutter_p_shop/utils/constants/image_strings.dart';
import 'package:flutter_p_shop/utils/helpers/helper_functions.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            TCurvedEdgesWidget(
              child: Container(
                color: dark ? TColors.darkerGrey : TColors.light,
                child: const Stack(
                  children: [
                    // Main Large Image
                    SizedBox(height: 400,child: Center(child: Image(image: AssetImage(TImages.productImage1))))
                  ],
                ),
              ),
            )

            /// 1 - Product Image Slider
          ],
        ),
      ),
    );
  }
}
