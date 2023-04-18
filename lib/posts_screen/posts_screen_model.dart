import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/request_manager.dart';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostsScreenModel extends FlutterFlowModel {
  /// Query cache managers for this widget.

  final _postsListManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> postsList({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _postsListManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearPostsListCache() => _postsListManager.clear();
  void clearPostsListCacheKey(String? uniqueKey) =>
      _postsListManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    /// Dispose query cache managers for this widget.

    clearPostsListCache();
  }

  /// Additional helper methods are added here.

}
