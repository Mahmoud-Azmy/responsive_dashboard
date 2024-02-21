import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 26, bottom: 30),
      child: Container(
        color: Colors.white,
        child: const Column(
          children: [
            SizedBox(
              height: 40,
            ),
            UserInfoListTile(
              image: Assets.assetsImagesUser3,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
          ],
        ),
      ),
    );
  }
}
