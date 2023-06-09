import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_list_column_model.dart';

export 'user_list_column_model.dart';

class UserListColumnWidget extends StatefulWidget {
  final Function(String? userId)? onSelect;
  const UserListColumnWidget({
    Key? key,
    this.onSelect,
  }) : super(key: key);

  @override
  _UserListColumnWidgetState createState() => _UserListColumnWidgetState();
}

class _UserListColumnWidgetState extends State<UserListColumnWidget>
    with TickerProviderStateMixin {
  late UserListColumnModel _model;

  final animationsMap = {
    'rowOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 1240.ms,
          begin: Offset(0.0, 42.0),
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
    _model = createModel(context, () => UserListColumnModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    bool shouldOpenInfoScreen = false;
    switch (deviceType) {
      case DeviceScreenType.mobile:
        shouldOpenInfoScreen = true;
        break;
    }

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 20.0, 0.0),
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
          final columnGetUsersResponse = snapshot.data!;
          return Builder(builder: (context) {
            final usersColumn = DummyapiGroup.getUsersCall
                    .datas(
                      columnGetUsersResponse.jsonBody,
                    )
                    ?.toList() ??
                [];
            return CustomScrollView(
              shrinkWrap: true,
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    List.generate(
                      usersColumn.length,
                      (usersColumnIndex) {
                        // final usersColumnItem = usersColumn[usersColumnIndex];
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
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
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF6E61FA),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(30.0),
                                        topLeft: Radius.circular(30.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: Colors.transparent,
                                        width: 0.0,
                                      ),
                                    ),
                                    child: GestureDetector(
                                      onTap: shouldOpenInfoScreen
                                          ? () async {
                                              context.pushNamed(
                                                'ITEM_INFO',
                                                queryParams: {
                                                  'userId': serializeParam(
                                                    (DummyapiGroup.getUsersCall
                                                            .ids(
                                                      columnGetUsersResponse
                                                          .jsonBody,
                                                    ) as List)
                                                        .map<String>(
                                                            (s) => s.toString())
                                                        .toList()[
                                                            usersColumnIndex]
                                                        .toString(),
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            }
                                          : () async {
                                              final userId = serializeParam(
                                                (DummyapiGroup.getUsersCall.ids(
                                                  columnGetUsersResponse
                                                      .jsonBody,
                                                ) as List)
                                                    .map<String>(
                                                        (s) => s.toString())
                                                    .toList()[usersColumnIndex]
                                                    .toString(),
                                                ParamType.String,
                                              );
                                              widget.onSelect!(userId);
                                            },
                                      child: Container(
                                        width: 100.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF6E61FA),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(30.0),
                                            topLeft: Radius.circular(30.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          border: Border.all(
                                            color: Colors.transparent,
                                            width: 0.0,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 2.0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100.0),
                                                ),
                                                child: Container(
                                                  width: 80.0,
                                                  height: 80.0,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Color(0xFF7D71F8),
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary
                                                      ],
                                                      stops: [0.0, 1.0],
                                                      begin:
                                                          AlignmentDirectional(
                                                              0.0, -1.0),
                                                      end: AlignmentDirectional(
                                                          0, 1.0),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(2.0, 2.0,
                                                                2.0, 2.0),
                                                    child: Container(
                                                      width: 120.0,
                                                      height: 120.0,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.network(
                                                        DummyapiGroup
                                                            .getUsersCall
                                                            .pictures(
                                                          columnGetUsersResponse
                                                              .jsonBody,
                                                        )[usersColumnIndex],
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            (DummyapiGroup
                                                                    .getUsersCall
                                                                    .titles(
                                                              columnGetUsersResponse
                                                                  .jsonBody,
                                                            ) as List)
                                                                .map<String>(
                                                                    (s) => s
                                                                        .toString())
                                                                .toList()[
                                                                    usersColumnIndex]
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        '${(DummyapiGroup.getUsersCall.firstNames(
                                                          columnGetUsersResponse
                                                              .jsonBody,
                                                        ) as List).map<String>((s) => s.toString()).toList()[usersColumnIndex].toString()} ${(DummyapiGroup.getUsersCall.lastNames(
                                                          columnGetUsersResponse
                                                              .jsonBody,
                                                        ) as List).map<String>((s) => s.toString()).toList()[usersColumnIndex].toString()}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Icon(
                                                    Icons.keyboard_arrow_right,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                    size: 19.0,
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
                              ),
                            ),
                          ],
                        ).animateOnPageLoad(
                            animationsMap['rowOnPageLoadAnimation']!);
                      },
                    ),
                  ),
                )
              ],
            );
          });
        },
      ),
    );
  }
}
