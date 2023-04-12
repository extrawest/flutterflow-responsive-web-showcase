import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_list_row_model.dart';
export 'user_list_row_model.dart';

class UserListRowWidget extends StatefulWidget {
  const UserListRowWidget({Key? key}) : super(key: key);

  @override
  _UserListRowWidgetState createState() => _UserListRowWidgetState();
}

class _UserListRowWidgetState extends State<UserListRowWidget>
    with TickerProviderStateMixin {
  late UserListRowModel _model;

  final animationsMap = {
    'rowOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 1080.ms,
          begin: Offset(41.0, 0.0),
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
    _model = createModel(context, () => UserListRowModel());
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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
      child: FutureBuilder<ApiCallResponse>(
        future: FFAppState().users(
          requestFn: () => DummyapiGroup.getUsersCall.call(),
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 35.0,
                height: 35.0,
                child: SpinKitSquareCircle(
                  color: FlutterFlowTheme.of(context).lineColor,
                  size: 35.0,
                ),
              ),
            );
          }
          final productGetUsersResponse = snapshot.data!;
          return Builder(
            builder: (context) {
              final usersRow = DummyapiGroup.getUsersCall
                      .datas(
                        productGetUsersResponse.jsonBody,
                      )
                      ?.toList() ??
                  [];
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(usersRow.length, (usersRowIndex) {
                    final usersRowItem = usersRow[usersRowIndex];
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed(
                            'ITEM_INFO',
                            queryParams: {
                              'userId': serializeParam(
                                (DummyapiGroup.getUsersCall.ids(
                                  productGetUsersResponse.jsonBody,
                                ) as List)
                                    .map<String>((s) => s.toString())
                                    .toList()[usersRowIndex]
                                    .toString(),
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Material(
                          color: Colors.transparent,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(30.0),
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          child: Container(
                            width: 200.0,
                            height: 300.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFF59292),
                                  FlutterFlowTheme.of(context).secondary
                                ],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(0.34, -1.0),
                                end: AlignmentDirectional(-0.34, 1.0),
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(30.0),
                                topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(0.0),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 5.0, 5.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 14.0, 0.0, 14.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Image.network(
                                            DummyapiGroup.getUsersCall.pictures(
                                              productGetUsersResponse.jsonBody,
                                            )[usersRowIndex],
                                            width: 100.0,
                                            height: 135.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          (DummyapiGroup.getUsersCall.titles(
                                            productGetUsersResponse.jsonBody,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()[usersRowIndex]
                                              .toString()
                                              .maybeHandleOverflow(
                                                  maxChars: 20),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color: Colors.white,
                                                fontSize: 14.0,
                                              ),
                                        ),
                                        Text(
                                          ' ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        Text(
                                          (DummyapiGroup.getUsersCall
                                                  .firstNames(
                                            productGetUsersResponse.jsonBody,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()[usersRowIndex]
                                              .toString()
                                              .maybeHandleOverflow(
                                                  maxChars: 20),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color: Colors.white,
                                                fontSize: 14.0,
                                              ),
                                        ),
                                        Text(
                                          ' ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                        Text(
                                          (DummyapiGroup.getUsersCall.lastNames(
                                            productGetUsersResponse.jsonBody,
                                          ) as List)
                                              .map<String>((s) => s.toString())
                                              .toList()[usersRowIndex]
                                              .toString()
                                              .maybeHandleOverflow(
                                                  maxChars: 20),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color: Colors.white,
                                                fontSize: 14.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation']!);
            },
          );
        },
      ),
    );
  }
}
