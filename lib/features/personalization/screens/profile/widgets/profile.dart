import 'package:flutter/material.dart';
import 'package:flutter_p_shop/common/widgets/appbar/appbar.dart';
import 'package:flutter_p_shop/common/widgets/images/t_circular_image.dart';
import 'package:flutter_p_shop/common/widgets/texts/section_heading.dart';
import 'package:flutter_p_shop/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:flutter_p_shop/utils/constants/colors.dart';
import 'package:flutter_p_shop/utils/constants/image_strings.dart';
import 'package:flutter_p_shop/utils/constants/sizes.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true, title: Text('Hồ Sơ'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.user, width: 80, height: 80,),
                    TextButton(onPressed: (){}, child: const Text('Thay đổi ảnh hồ sơ'))
                  ],
                ),
              ),
              // Details
              const SizedBox(height: TSizes.spaceBtwItems / 2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),
         
              // Heading Profile Info
              const TSectionHeading(title: 'Thông tin hồ sơ', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(title:  'Tên', value: 'Phúc Trần', onPressed: (){},),
              TProfileMenu(title:  'Tên người dùng', value: 'Phúc Trần', onPressed: (){},),

              const SizedBox(height: TSizes.spaceBtwItems / 2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              // Heading Personal Info
              const TSectionHeading(title: 'Thông tin cá nhân', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(title:  'ID', value: '45689',icon: Iconsax.copy, onPressed: (){},),
              TProfileMenu(title:  'E-mail', value: 'phuctran@gmail.com', onPressed: (){},),
              TProfileMenu(title:  'Số điện thoại', value: '0123456789', onPressed: (){},),
              TProfileMenu(title:  'Giới tính', value: 'Nam', onPressed: (){},),
              TProfileMenu(title:  'Ngày sinh', value: '10/9/2003', onPressed: (){},),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              Center(
                child: TextButton(
                  onPressed: (){},
                  child: const Text('Thoát', style: TextStyle(color: Colors.red),),
                ),
              )

              
            ],
          ),
        ),
      ),
    );
  }
}

