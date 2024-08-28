import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
  });
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: const Color(0xffFAFAFA),
        elevation: 0,
        child: Center(
          child: ListTile(
            leading: SvgPicture.asset(
              userInfoModel.image,
            ),
            title: Text(
              userInfoModel.name,
              style: AppStyles.styleSemiBold16(context),
            ),
            subtitle: Text(
              userInfoModel.mail,
              style: AppStyles.styleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
