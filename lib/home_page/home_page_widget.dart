import '/backend/api_requests/api_calls.dart';
import '/components/header_main_screen_widget.dart';
import '/components/user_list_column_widget.dart';
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
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    Key? key,
    bool? isUserFetching,
  })  : this.isUserFetching = isUserFetching ?? false,
        super(key: key);

  final bool isUserFetching;

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'rowOnPageLoadAnimation1': AnimationInfo(
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
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 1230.ms,
          begin: Offset(-44.99999999999999, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
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
    'iconOnPageLoadAnimation': AnimationInfo(
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
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
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
        final homePageGetUsersResponse = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          drawer: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Drawer(
              elevation: 25.0,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 70.0,
                          height: 70.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://thumbs.dreamstime.com/b/barbershop-salon-barber-hairdresser-man-mature-good-looking-model-copy-space-hair-styling-reference-beauty-grizzle-deal-208541615.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              'Andrea Davis',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    fontSize: 16.0,
                                  ),
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
          body: NestedScrollView(
            headerSliverBuilder: (context, _) => [
              SliverAppBar(
                pinned: false,
                floating: true,
                snap: true,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                leading: InkWell(
                  onTap: () async {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  child: Icon(
                    FFIcons.kmenu2,
                    color: FlutterFlowTheme.of(context).lineColor,
                    size: 30.0,
                  ),
                ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation']!),
                actions: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (Theme.of(context).brightness == Brightness.light)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: InkWell(
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
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: InkWell(
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
                        InkWell(
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
                            child: Image.network(
                              'https://thumbs.dreamstime.com/b/barbershop-salon-barber-hairdresser-man-mature-good-looking-model-copy-space-hair-styling-reference-beauty-grizzle-deal-208541615.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation2']!),
                  ),
                ],
                centerTitle: false,
                elevation: 0.0,
              )
            ],
            body: Builder(
              builder: (context) {
                return SafeArea(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 15.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.headerMainScreenModel,
                            updateCallback: () => setState(() {}),
                            child: HeaderMainScreenWidget(),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Builder(
                              builder: (context) {
                                final usersRow = DummyapiGroup.getUsersCall
                                        .datas(
                                          homePageGetUsersResponse.jsonBody,
                                        )
                                        ?.toList() ??
                                    [];
                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(usersRow.length,
                                        (usersRowIndex) {
                                      final usersRowItem =
                                          usersRow[usersRowIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          onTap: () async {
                                            context.pushNamed(
                                              'ITEM_INFO',
                                              queryParams: {
                                                'userId': serializeParam(
                                                  (DummyapiGroup.getUsersCall
                                                          .ids(
                                                    homePageGetUsersResponse
                                                        .jsonBody,
                                                  ) as List)
                                                      .map<String>(
                                                          (s) => s.toString())
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
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(30.0),
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
                                                    FlutterFlowTheme.of(context)
                                                        .secondary
                                                  ],
                                                  stops: [0.0, 1.0],
                                                  begin: AlignmentDirectional(
                                                      0.34, -1.0),
                                                  end: AlignmentDirectional(
                                                      -0.34, 1.0),
                                                ),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(30.0),
                                                  topLeft:
                                                      Radius.circular(30.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 5.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  14.0,
                                                                  0.0,
                                                                  14.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child:
                                                                Image.network(
                                                              DummyapiGroup
                                                                  .getUsersCall
                                                                  .pictures(
                                                                homePageGetUsersResponse
                                                                    .jsonBody,
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
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            (DummyapiGroup
                                                                    .getUsersCall
                                                                    .titles(
                                                              homePageGetUsersResponse
                                                                  .jsonBody,
                                                            ) as List)
                                                                .map<String>(
                                                                    (s) => s
                                                                        .toString())
                                                                .toList()[
                                                                    usersRowIndex]
                                                                .toString()
                                                                .maybeHandleOverflow(
                                                                    maxChars:
                                                                        20),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                          ),
                                                          Text(
                                                            ' ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                          Text(
                                                            (DummyapiGroup
                                                                    .getUsersCall
                                                                    .firstNames(
                                                              homePageGetUsersResponse
                                                                  .jsonBody,
                                                            ) as List)
                                                                .map<String>(
                                                                    (s) => s
                                                                        .toString())
                                                                .toList()[
                                                                    usersRowIndex]
                                                                .toString()
                                                                .maybeHandleOverflow(
                                                                    maxChars:
                                                                        20),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                          ),
                                                          Text(
                                                            ' ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                          Text(
                                                            (DummyapiGroup
                                                                    .getUsersCall
                                                                    .lastNames(
                                                              homePageGetUsersResponse
                                                                  .jsonBody,
                                                            ) as List)
                                                                .map<String>(
                                                                    (s) => s
                                                                        .toString())
                                                                .toList()[
                                                                    usersRowIndex]
                                                                .toString()
                                                                .maybeHandleOverflow(
                                                                    maxChars:
                                                                        20),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      14.0,
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
                                ).animateOnPageLoad(
                                    animationsMap['rowOnPageLoadAnimation1']!);
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Most Popular',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          fontSize: 23.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation']!),
                                ),
                              ],
                            ),
                          ),
                          FutureBuilder<ApiCallResponse>(
                            future: DummyapiGroup.getUsersCall.call(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 35.0,
                                    height: 35.0,
                                    child: SpinKitSquareCircle(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      size: 35.0,
                                    ),
                                  ),
                                );
                              }
                              final userListColumnGetUsersResponse =
                                  snapshot.data!;
                              return wrapWithModel(
                                model: _model.userListColumnModel,
                                updateCallback: () => setState(() {}),
                                child: UserListColumnWidget(),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
