import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../index.dart';
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
          Expanded(
            flex: 1,
            child: SidePanelWidget(
              onSelect: (_userId) => setState(() => userId = _userId),
              isUserFetching: widget.isUserFetching,
            ),
          ),
          Expanded(
              flex: 2,
              child: userId != null
                  ? ItemInfoWidget(
                      userId: userId,
                    )
                  : EmptyPersonalInfoScreenWidget()),
        ],
      );
    });
  }
}
