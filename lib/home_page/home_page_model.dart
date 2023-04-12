import '/components/header_main_screen_widget.dart';
import '/components/user_list_column_widget.dart';
import '/components/user_list_row_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderMainScreen component.
  late HeaderMainScreenModel headerMainScreenModel;
  // Model for UserListRow component.
  late UserListRowModel userListRowModel;
  // Model for UserListColumn component.
  late UserListColumnModel userListColumnModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerMainScreenModel = createModel(context, () => HeaderMainScreenModel());
    userListRowModel = createModel(context, () => UserListRowModel());
    userListColumnModel = createModel(context, () => UserListColumnModel());
  }

  void dispose() {
    headerMainScreenModel.dispose();
    userListRowModel.dispose();
    userListColumnModel.dispose();
  }

  /// Additional helper methods are added here.

}
