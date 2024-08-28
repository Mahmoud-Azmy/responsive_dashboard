import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/text_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding:
            const EdgeInsets.only(top: 10, bottom: 20, left: 16, right: 20),
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.assetsImagesBackgrounCard),
          ),
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff4EB7F2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(
                right: 16,
              ),
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: const Color(0xffffffff)),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  'Syah Bandi',
                  style: AppStyles.styleMedium20(context),
                ),
              ),
              trailing: SvgPicture.asset(Assets.assetsImagesGallery),
            ),
            const Spacer(),
            Text(
              '0918 8124 0042 8129',
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: const Color(0xffffffff)),
            ),
            Text(
              '12/20-124',
              style: AppStyles.styleRegular16(context)
                  .copyWith(color: const Color(0xffffffff)),
            ),
          ],
        ),
      ),
    );
  }
}
