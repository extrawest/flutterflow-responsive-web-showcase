import '/components/user_list_column_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SidePanelModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for search widget.
  TextEditingController? searchController;
  String? Function(BuildContext, String?)? searchControllerValidator;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsController;
  // Model for UserListColumn component.
  late UserListColumnModel userListColumnModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    userListColumnModel = createModel(context, () => UserListColumnModel());
  }

  void dispose() {
    searchController?.dispose();
    userListColumnModel.dispose();
  }

  /// Additional helper methods are added here.

}
