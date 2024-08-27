import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width * .65,
        color: Colors.white,
        child: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 26,
              ),
            ),
            SliverToBoxAdapter(
              child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                    image: Assets.assetsImagesUser3,
                    name: 'Lekan Okeowo',
                    mail: 'demo@gmail.com'),
              ),
            ),
            DrawerItemListView(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  InActiveDrawerItem(
                      drawerItemModel: DrawerItemModel(
                          Assets.assetsImagesSettings, 'Setting system'),
                      isActive: false),
                  SizedBox(
                    height: 20,
                  ),
                  InActiveDrawerItem(
                      drawerItemModel: DrawerItemModel(
                          Assets.assetsImagesLogout, 'Logout account'),
                      isActive: false),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
