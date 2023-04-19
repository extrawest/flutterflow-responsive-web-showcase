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
import 'app_bar_buttons_model.dart';
export 'app_bar_buttons_model.dart';

class AppBarButtonsWidget extends StatefulWidget {
  const AppBarButtonsWidget({Key? key}) : super(key: key);

  @override
  _AppBarButtonsWidgetState createState() => _AppBarButtonsWidgetState();
}

class _AppBarButtonsWidgetState extends State<AppBarButtonsWidget>
    with TickerProviderStateMixin {
  late AppBarButtonsModel _model;

  final animationsMap = {
    'rowOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 1190.ms,
          begin: Offset(0.0, -34.0),
          end: Offset(0.0, 0.0),
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
    _model = createModel(context, () => AppBarButtonsModel());
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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (Theme.of(context).brightness == Brightness.light)
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
              child: GestureDetector(
                onTap: () async {
                  setDarkModeSetting(context, ThemeMode.dark);
                },
                child: FaIcon(
                  FontAwesomeIcons.moon,
                  color: FlutterFlowTheme.of(context).lineColor,
                  size: 22.0,
                ),
              ),
            ),
          if (Theme.of(context).brightness == Brightness.dark)
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
              child: GestureDetector(
                onTap: () async {
                  setDarkModeSetting(context, ThemeMode.light);
                },
                child: FaIcon(
                  FontAwesomeIcons.solidMoon,
                  color: FlutterFlowTheme.of(context).lineColor,
                  size: 22.0,
                ),
              ),
            ),
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x33000000),
                  offset: Offset(2.0, 2.0),
                  spreadRadius: 2.0,
                )
              ],
              borderRadius: BorderRadius.circular(40.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                width: 1.0,
              ),
            ),
            child: GestureDetector(
              onTap: () async {
                context.pushNamed('PROFILE');
              },
              child: Container(
                width: 40.0,
                height: 40.0,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/Flutter.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!),
    );
  }
}
