import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
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
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 26),
      child: Container(
          color: Colors.white,
          child: const CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: UserInfoListTile(
                  image: Assets.assetsImagesUser3,
                  title: 'Lekan Okeowo',
                  subtitle: 'demo@gmail.com',
                ),
              ),
              SliverToBoxAdapter(),
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
          )),
    );
  }
}
