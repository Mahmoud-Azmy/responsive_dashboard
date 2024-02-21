import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 293,
          child: CustomDrawer(),
        ),
        // Expanded(
        //   flex: 604,
        //   child: Container(
        //     color: Colors.blue,
        //   ),
        // ),
        // Expanded(
        //   flex: 468,
        //   child: Container(
        //     color: Colors.red,
        //   ),
        // ),
      ],
    );
  }
}
