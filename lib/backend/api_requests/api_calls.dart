import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start dummyapi Group Code

class DummyapiGroup {
  static String baseUrl = 'https://dummyapi.io/data/v1/';
  static Map<String, String> headers = {
    'app-id': '62cd3a1c3f25f50d57b3a9f8',
  };
  static GetUsersCall getUsersCall = GetUsersCall();
  static GetPostsCall getPostsCall = GetPostsCall();
  static GetUserPostsCall getUserPostsCall = GetUserPostsCall();
  static GetUserCommentsCall getUserCommentsCall = GetUserCommentsCall();
  static GetUserProfileCall getUserProfileCall = GetUserProfileCall();
}

class GetUsersCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getUsers',
      apiUrl: '${DummyapiGroup.baseUrl}user',
      callType: ApiCallType.GET,
      headers: {
        ...DummyapiGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic datas(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic ids(dynamic response) => getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      );
  dynamic titles(dynamic response) => getJsonField(
        response,
        r'''$.data[:].title''',
        true,
      );
  dynamic firstNames(dynamic response) => getJsonField(
        response,
        r'''$.data[:].firstName''',
        true,
      );
  dynamic lastNames(dynamic response) => getJsonField(
        response,
        r'''$.data[:].lastName''',
        true,
      );
  dynamic pictures(dynamic response) => getJsonField(
        response,
        r'''$.data[:].picture''',
        true,
      );
  dynamic total(dynamic response) => getJsonField(
        response,
        r'''$.total''',
      );
  dynamic page(dynamic response) => getJsonField(
        response,
        r'''$.page''',
      );
  dynamic limit(dynamic response) => getJsonField(
        response,
        r'''$.limit''',
      );
}

class GetPostsCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getPosts',
      apiUrl: '${DummyapiGroup.baseUrl}post',
      callType: ApiCallType.GET,
      headers: {
        ...DummyapiGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic datas(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  dynamic ids(dynamic response) => getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      );
  dynamic images(dynamic response) => getJsonField(
        response,
        r'''$.data[:].image''',
        true,
      );
  dynamic likes(dynamic response) => getJsonField(
        response,
        r'''$.data[:].likes''',
        true,
      );
  dynamic tags(dynamic response) => getJsonField(
        response,
        r'''$.data[:].tags''',
        true,
      );
  dynamic texts(dynamic response) => getJsonField(
        response,
        r'''$.data[:].text''',
        true,
      );
  dynamic publishDates(dynamic response) => getJsonField(
        response,
        r'''$.data[:].publishDate''',
        true,
      );
  dynamic owners(dynamic response) => getJsonField(
        response,
        r'''$.data[:].owner''',
        true,
      );
  dynamic ownerIds(dynamic response) => getJsonField(
        response,
        r'''$.data[:].owner.id''',
        true,
      );
  dynamic ownerTitles(dynamic response) => getJsonField(
        response,
        r'''$.data[:].owner.title''',
        true,
      );
  dynamic ownerfFirstNames(dynamic response) => getJsonField(
        response,
        r'''$.data[:].owner.firstName''',
        true,
      );
  dynamic ownerLastNames(dynamic response) => getJsonField(
        response,
        r'''$.data[:].owner.lastName''',
        true,
      );
  dynamic ownerPictures(dynamic response) => getJsonField(
        response,
        r'''$.data[:].owner.picture''',
        true,
      );
  dynamic total(dynamic response) => getJsonField(
        response,
        r'''$.total''',
      );
  dynamic page(dynamic response) => getJsonField(
        response,
        r'''$.page''',
      );
  dynamic limit(dynamic response) => getJsonField(
        response,
        r'''$.limit''',
      );
}

class GetUserPostsCall {
  Future<ApiCallResponse> call({
    String? userId = '60d0fe4f5311236168a109ca',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserPosts',
      apiUrl: '${DummyapiGroup.baseUrl}user/${userId}/post',
      callType: ApiCallType.GET,
      headers: {
        ...DummyapiGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetUserCommentsCall {
  Future<ApiCallResponse> call({
    String? userId = '60d0fe4f5311236168a109d8',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserComments',
      apiUrl: '${DummyapiGroup.baseUrl}post/${userId}/comment',
      callType: ApiCallType.GET,
      headers: {
        ...DummyapiGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetUserProfileCall {
  Future<ApiCallResponse> call({
    String? userId = '60d0fe4f5311236168a109ca',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getUserProfile',
      apiUrl: '${DummyapiGroup.baseUrl}user/${userId}',
      callType: ApiCallType.GET,
      headers: {
        ...DummyapiGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.title''',
      );
  dynamic firstName(dynamic response) => getJsonField(
        response,
        r'''$.firstName''',
      );
  dynamic lastName(dynamic response) => getJsonField(
        response,
        r'''$.lastName''',
      );
  dynamic picture(dynamic response) => getJsonField(
        response,
        r'''$.picture''',
      );
  dynamic gender(dynamic response) => getJsonField(
        response,
        r'''$.gender''',
      );
  dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
  dynamic dateOfBirth(dynamic response) => getJsonField(
        response,
        r'''$.dateOfBirth''',
      );
  dynamic phone(dynamic response) => getJsonField(
        response,
        r'''$.phone''',
      );
  dynamic location(dynamic response) => getJsonField(
        response,
        r'''$.location''',
      );
  dynamic locationStreet(dynamic response) => getJsonField(
        response,
        r'''$.location.street''',
      );
  dynamic locationCity(dynamic response) => getJsonField(
        response,
        r'''$.location.city''',
      );
  dynamic locationState(dynamic response) => getJsonField(
        response,
        r'''$.location.state''',
      );
  dynamic locationCountry(dynamic response) => getJsonField(
        response,
        r'''$.location.country''',
      );
  dynamic locationTimezone(dynamic response) => getJsonField(
        response,
        r'''$.location.timezone''',
      );
  dynamic registerDate(dynamic response) => getJsonField(
        response,
        r'''$.registerDate''',
      );
  dynamic updatedDate(dynamic response) => getJsonField(
        response,
        r'''$.updatedDate''',
      );
}

/// End dummyapi Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
