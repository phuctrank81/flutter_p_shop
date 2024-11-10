import 'package:flutter/material.dart';
import 'package:flutter_p_shop/common/widgets/images/t_circular_image.dart';
import 'package:flutter_p_shop/utils/constants/colors.dart';
import 'package:flutter_p_shop/utils/constants/image_strings.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image:  TImages.user,                   
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text('Phuc Tran', style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
      subtitle: Text('phuctran@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Iconsax.edit, color: TColors.white,)),
    );
  }
}