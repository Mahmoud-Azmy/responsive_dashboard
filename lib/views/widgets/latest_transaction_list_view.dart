import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const List<UserInfoModel> items = [
    UserInfoModel(
        name: 'Madrani Andi',
        mail: 'Madraniadi20@gmail',
        image: Assets.assetsImagesUser1),
    UserInfoModel(
        name: 'Josua Nunito',
        mail: 'Madraniadi20@gmail',
        image: Assets.assetsImagesUser2),
    UserInfoModel(
        name: 'Madrani Andi',
        mail: 'Madraniadi20@gmail',
        image: Assets.assetsImagesUser1),
    UserInfoModel(
        name: 'Josua Nunito',
        mail: 'Madraniadi20@gmail',
        image: Assets.assetsImagesUser2),
    UserInfoModel(
        name: 'Madrani Andi',
        mail: 'Madraniadi20@gmail',
        image: Assets.assetsImagesUser1),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
              child: UserInfoListTile(
            userInfoModel: items[index],
          ));
        },
      ),
    );
  }
}
