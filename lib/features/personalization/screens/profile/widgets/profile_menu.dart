import 'package:flutter/material.dart';
import 'package:flutter_p_shop/utils/constants/sizes.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TProfileMenu extends StatelessWidget {
  const TProfileMenu({
    super.key,
    required this.onPressed,
    required this.title,
    required this.value,
    this.icon = Iconsax.arrow_right
  });

  final IconData icon;
  final VoidCallback onPressed;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwItems / 1.5  ),
        child: Row(
          children: [
            Expanded(flex: 3,child: Text(title,style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey), overflow: TextOverflow.ellipsis, )),
            Expanded(flex: 5,child: Text(value,style: Theme.of(context).textTheme.bodyMedium, overflow: TextOverflow.ellipsis,)),
            Expanded(child: Icon(icon, size: 18,))
          ],
        ),
      ),
    );
  }
}