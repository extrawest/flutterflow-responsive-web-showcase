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

class HomePagePresenter extends StatelessWidget {
  final bool isUserFetching;

  const HomePagePresenter({
    Key? key,
    bool? isUserFetching,
  })  : this.isUserFetching = isUserFetching ?? false,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return HomePageWidget(
          isUserFetching: isUserFetching,
        );
      }
      return Row(
        children: [
          SizedBox(
            width: size.width * 2 / 6,
            child: HomePageWidget(
              isUserFetching: isUserFetching,
            ),
          ),
          SizedBox(
              width: size.width * 4 / 6,
              child: Container(color: Colors.purple)),
        ],
      );
    });
  }
}
