import 'package:flutter/material.dart';
import 'package:flutter_p_shop/features/authentication/screens/home/widgets/curved_edges/curved_edges_widget.dart';
import 'package:flutter_p_shop/features/authentication/screens/home/widgets/custom_shapes/container/circular_container.dart';
import 'package:flutter_p_shop/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: TColors.primary,       
        // ----
        child: Stack(
          children: [
            ///-- Background Custom Shapes
            Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                )),
            Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                )),
                child,
          ],
        ),
      ),
    );
  }
}