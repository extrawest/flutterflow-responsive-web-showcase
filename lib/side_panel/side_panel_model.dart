import '/components/app_bar_buttons_widget.dart';
import '/components/header_main_screen_widget.dart';
import '/components/user_list_column_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SidePanelModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderMainScreen component.
  late HeaderMainScreenModel headerMainScreenModel;
  // Model for UserListColumn component.
  late UserListColumnModel userListColumnModel;
  // Model for AppBarButtons component.
  late AppBarButtonsModel appBarButtonsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerMainScreenModel = createModel(context, () => HeaderMainScreenModel());
    userListColumnModel = createModel(context, () => UserListColumnModel());
    appBarButtonsModel = createModel(context, () => AppBarButtonsModel());
  }

  void dispose() {
    headerMainScreenModel.dispose();
    userListColumnModel.dispose();
    appBarButtonsModel.dispose();
  }

  /// Additional helper methods are added here.

}
