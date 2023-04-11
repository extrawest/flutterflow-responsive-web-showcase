// ResponsiveBuilder(
//     builder: (context, sizingInformation) {
//       // Check the sizing information here and return your UI
//           if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
//           return Container(color:Colors.blue);
//         }

//         if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
//           return Container(color:Colors.red);
//         }

//         if (sizingInformation.deviceScreenType == DeviceScreenType.watch) {
//           return Container(color:Colors.yellow);
//         }

//         return Container(color:Colors.purple);
//       },
//     },
//   );

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'home_page_widget.dart';

import '../item_info/item_info_widget.dart';
import '../side_panel/side_panel_widget.dart';

class HomePagePresenter extends StatefulWidget {
  final bool isUserFetching;

  const HomePagePresenter({
    Key? key,
    bool? isUserFetching,
  })  : this.isUserFetching = isUserFetching ?? false,
        super(key: key);

  @override
  State<HomePagePresenter> createState() => _HomePagePresenterState();
}

class _HomePagePresenterState extends State<HomePagePresenter> {
  String? userId;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return HomePageWidget(
          isUserFetching: widget.isUserFetching,
        );
      }
      return Row(
        children: [
          SizedBox(
            width: size.width * 2 / 5,
            child: SidePanelWidget(
              onSelect: (_userId) => setState(() => userId = _userId),
              isUserFetching: widget.isUserFetching,
            ),
          ),
          SizedBox(
              width: size.width * 3 / 5,
              child: userId != null
                  ? ItemInfoWidget(
                      userId: userId,
                    )
                  : Placeholder()),
        ],
      );
    });
  }
}
