import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header_main_screen_model.dart';
export 'header_main_screen_model.dart';

class HeaderMainScreenWidget extends StatefulWidget {
  const HeaderMainScreenWidget({Key? key}) : super(key: key);

  @override
  _HeaderMainScreenWidgetState createState() => _HeaderMainScreenWidgetState();
}

class _HeaderMainScreenWidgetState extends State<HeaderMainScreenWidget>
    with TickerProviderStateMixin {
  late HeaderMainScreenModel _model;

  final animationsMap = {
    'rowOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 720.ms,
          begin: Offset(0.0, -27.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'choiceChipsOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 1040.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderMainScreenModel());

    _model.searchController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _model.searchController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: FlutterFlowTheme.of(context).bodySmall,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).searchColor,
                      prefixIcon: Icon(
                        Icons.search_sharp,
                        color: FlutterFlowTheme.of(context).secondary,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                    validator:
                        _model.searchControllerValidator.asValidator(context),
                  ),
                ),
              ],
            ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                    child: FlutterFlowChoiceChips(
                      options: [
                        ChipData('All'),
                        ChipData('ms'),
                        ChipData('miss'),
                        ChipData('mr'),
                        ChipData('mrs')
                      ],
                      onChanged: (val) =>
                          setState(() => _model.choiceChipsValue = val?.first),
                      selectedChipStyle: ChipStyle(
                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.white,
                                ),
                        iconColor: FlutterFlowTheme.of(context).primary,
                        iconSize: 20.0,
                        elevation: 5.0,
                      ),
                      unselectedChipStyle: ChipStyle(
                        backgroundColor: Colors.white,
                        textStyle:
                            FlutterFlowTheme.of(context).bodySmall.override(
                                  fontFamily: 'Open Sans',
                                  color: Color(0xFF323B45),
                                ),
                        iconColor: Colors.black,
                        iconSize: 18.0,
                        elevation: 0.0,
                      ),
                      chipSpacing: 10.0,
                      multiselect: false,
                      initialized: _model.choiceChipsValue != null,
                      alignment: WrapAlignment.start,
                      controller: _model.choiceChipsController ??=
                          FormFieldController<List<String>>(
                        ['All'],
                      ),
                    ).animateOnPageLoad(
                        animationsMap['choiceChipsOnPageLoadAnimation']!),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
