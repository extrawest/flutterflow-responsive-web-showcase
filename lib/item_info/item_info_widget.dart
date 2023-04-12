import 'package:responsive_builder/responsive_builder.dart';

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'item_info_model.dart';
export 'item_info_model.dart';

class ItemInfoWidget extends StatefulWidget {
  const ItemInfoWidget({
    Key? key,
    this.userId,
  }) : super(key: key);

  final String? userId;

  @override
  _ItemInfoWidgetState createState() => _ItemInfoWidgetState();
}

class _ItemInfoWidgetState extends State<ItemInfoWidget>
    with TickerProviderStateMixin {
  late ItemInfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  Map<String, AnimationInfo> animationsMap = {};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemInfoModel());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      var deviceType = getDeviceType(MediaQuery.of(context).size);
      var offset = Offset(0.0, 0.0);
      switch (deviceType) {
        case DeviceScreenType.desktop:
          offset = Offset(57.0, 0.0);
          break;
        case DeviceScreenType.tablet:
          offset = Offset(57.0, 0.0);
          break;
        case DeviceScreenType.mobile:
          offset = Offset(-57.0, 0.0);
          break;
      }
      animationsMap = {
        'rowOnPageLoadAnimation1': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            FadeEffect(
              curve: Curves.easeIn,
              delay: 0.ms,
              duration: 990.ms,
              begin: 0.0,
              end: 1.0,
            ),
          ],
        ),
        'textOnPageLoadAnimation1': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation2': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation3': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation4': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation5': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation6': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation7': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation8': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation9': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation10': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation11': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation12': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation13': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation14': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation15': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation16': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation17': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation18': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation19': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'textOnPageLoadAnimation20': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.elasticOut,
              delay: 0.ms,
              duration: 1220.ms,
              begin: offset,
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
        'rowOnPageLoadAnimation2': AnimationInfo(
          trigger: AnimationTrigger.onPageLoad,
          effects: [
            MoveEffect(
              curve: Curves.bounceOut,
              delay: 0.ms,
              duration: 970.ms,
              begin: Offset(0.0, 24.0),
              end: Offset(0.0, 0.0),
            ),
          ],
        ),
      };
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: DummyapiGroup.getUserProfileCall.call(
        userId: widget.userId,
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
        final itemInfoGetUserProfileResponse = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).lineColor,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              child: Stack(
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Image.network(
                                  DummyapiGroup.getUserProfileCall.picture(
                                    itemInfoGetUserProfileResponse.jsonBody,
                                  ),
                                  width: 100.0,
                                  height: 300.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ).animateOnPageLoad(
                              animationsMap['rowOnPageLoadAnimation1']!),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  DummyapiGroup.getUserProfileCall
                                      .title(
                                        itemInfoGetUserProfileResponse.jsonBody,
                                      )
                                      .toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ).animateOnActionTrigger(
                                  animationsMap[
                                      'textOnActionTriggerAnimation1']!,
                                ),
                                Text(
                                  ' ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ).animateOnActionTrigger(
                                  animationsMap[
                                      'textOnActionTriggerAnimation2']!,
                                ),
                                Text(
                                  DummyapiGroup.getUserProfileCall
                                      .firstName(
                                        itemInfoGetUserProfileResponse.jsonBody,
                                      )
                                      .toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ).animateOnActionTrigger(
                                  animationsMap[
                                      'textOnActionTriggerAnimation3']!,
                                ),
                                Text(
                                  ' ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ).animateOnActionTrigger(
                                  animationsMap[
                                      'textOnActionTriggerAnimation4']!,
                                ),
                                Text(
                                  DummyapiGroup.getUserProfileCall
                                      .lastName(
                                        itemInfoGetUserProfileResponse.jsonBody,
                                      )
                                      .toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ).animateOnActionTrigger(
                                  animationsMap[
                                      'textOnActionTriggerAnimation5']!,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'email: ',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation1']!),
                                Text(
                                  DummyapiGroup.getUserProfileCall
                                      .email(
                                        itemInfoGetUserProfileResponse.jsonBody,
                                      )
                                      .toString(),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation2']!),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'phone: ',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation3']!),
                                Text(
                                  DummyapiGroup.getUserProfileCall
                                      .phone(
                                        itemInfoGetUserProfileResponse.jsonBody,
                                      )
                                      .toString(),
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation4']!),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Birthday: ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation5']!),
                                Expanded(
                                  child: Text(
                                    valueOrDefault<String>(
                                      functions.getBirthday(
                                          DummyapiGroup.getUserProfileCall
                                              .dateOfBirth(
                                                itemInfoGetUserProfileResponse
                                                    .jsonBody,
                                              )
                                              .toString()),
                                      '0000-00-00',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation6']!),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 15.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'location:',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation7']!),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'country: ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation8']!),
                                    Text(
                                      DummyapiGroup.getUserProfileCall
                                          .locationCountry(
                                            itemInfoGetUserProfileResponse
                                                .jsonBody,
                                          )
                                          .toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation9']!),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'state: ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation10']!),
                                    Text(
                                      DummyapiGroup.getUserProfileCall
                                          .locationState(
                                            itemInfoGetUserProfileResponse
                                                .jsonBody,
                                          )
                                          .toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation11']!),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'city: ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation12']!),
                                    Text(
                                      DummyapiGroup.getUserProfileCall
                                          .locationCity(
                                            itemInfoGetUserProfileResponse
                                                .jsonBody,
                                          )
                                          .toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation13']!),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'street: ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation14']!),
                                    Text(
                                      DummyapiGroup.getUserProfileCall
                                          .locationStreet(
                                            itemInfoGetUserProfileResponse
                                                .jsonBody,
                                          )
                                          .toString(),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation15']!),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                      child: Stack(
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 100.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 5.0, 10.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Text(
                                              '\$ 235',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                    fontSize: 25.0,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 5.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                width: 200.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondary,
                                                      Color(0xFF6758FF)
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.64, -1.0),
                                                    end: AlignmentDirectional(
                                                        -0.64, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(50.0),
                                                    topLeft:
                                                        Radius.circular(50.0),
                                                    topRight:
                                                        Radius.circular(0.0),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 10.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          'Add to cart',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 18.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
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
                            ],
                          ).animateOnPageLoad(
                              animationsMap['rowOnPageLoadAnimation2']!),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
