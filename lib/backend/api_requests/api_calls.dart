import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
"username":"${username}",
 "password":"${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'https://dummyjson.com/auth/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic username(dynamic response) => getJsonField(
        response,
        r'''$.username''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.email''',
      );
  static dynamic firstname(dynamic response) => getJsonField(
        response,
        r'''$.firstName''',
      );
  static dynamic lastname(dynamic response) => getJsonField(
        response,
        r'''$.lastName''',
      );
  static dynamic gender(dynamic response) => getJsonField(
        response,
        r'''$.gender''',
      );
  static dynamic image(dynamic response) => getJsonField(
        response,
        r'''$.image''',
      );
  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.token''',
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
}

class LoginLogisticsCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "msgId": "8288288858908"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginLogistics',
      apiUrl:
          'https://558a9a1c-cfbe-413c-984f-806f4796dc02.mock.pstmn.io/logistics/api/v1/bundle/list',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-Auth-Token':
            'eyJhbGciOiJIUzI1NiJ9.eyJwcmluY2lwYWwiOiJINHNJQUFBQUFBQUFBSldWejBcL1VRQlRIWjFjSUdoSmdVY0FmQVV6RW15bUpIam1WM2JKV3UyM3RENGlZdUNuZFlTMTAyenFkd25JeG5QVEFBYU9TbUhqMXlIK2lGXC84QW93ZXZuTDM2cGd2YktWdEM3R0d6ZVpcL3YrNzQzYjZiVDR4TTBIQlAwcUUwY3o0K0Z5RVwvYVhpREVFZkdDZG96ZGhIaDBUMGhpVEZxWXBvcDZLclFoZ25wUHFZeEtDaXA3TFlvbWxTMW54MW4wbmFDOXFHMXNZWmN1ZFFsNkdKTDJxZU1tY1RwNE55VGJRdFwvYkRRbk9GY2lzUzFcL0xhR1FkVlJ6WERaT0FxbUVnZFNPUDROWTZtc2hpU3VodXM5Q1VDd1FIMUhQOG1KZU80TURaOEhGTFFhTk9RbCtGVU5YRE1VWGp2V1lUNnZtTEpxWkxDcm9hT1hFTTNaMWJpVWxaNjR5ek5nTll3V3YwQmcxMW94SThNTHY3VENvd0g2RWErajZzMmd1RGVNRU9PbUhMMlwvUlljZkRmblwvM3c0XC9ETHZsMUdDR2J5NFBLY0xINXJHZTFcL2VcL2wzTGgxMHlhVm9tbXM5a3kxMUkraW1ramxiQkxQS1B6XC9ySDQ5TzNyMjRBcFdaWXVYXC85Mk5CUEozY1hqWHNSQTV4YU1qdEVkanVEc0hcL2VUQmZ2dHo4YkJmMkJOUHJSRDZHRXhWUTNPcVh5SXhodVVNazlNXC9tRFh0bWFJclVGSFc1V1ZWa1NiVmlSc1lvbWtuamlxWTl0WFd6MlJCVnNTNDFPRjdKOFZWWldzdG5xcG9scjhoVjBaSTFOYytuQjNnT1Q2VllNMnFTVVZCMm5LTjgxdlUwcmh2YXFnem9ibzdkekxFTDE5SVgyS2FVVHpYRXRXWk50TVNDMU1tOGdDOTdwNGVrWjdaa1dwQ3FGNlJQRFdoNGg5czl5bjdxaG1ZWEdkdzRMK0h6T1RpWU9aWkJQbWNpalppMkRvTVFhdzFaelc4YkFCM09DVENkelV0VThwUHE0NHNtMVJmd05lZDY2TGxwU1kybUtWbVdyTllMSEdhS1pBT2JkWTd6ZGVaVGdXWFlvS2cxYTlLcVhKV0t6dmExVkFmT1JuNmZXS1JJUDg1Ujg3RzJWaFRuKzZqMDQrelFyY2lLeE43RVlhZlY4UUo0NGNmUys0WmRsSUlTd2pWNThPZjk5OE43ditEbGZZS0dkeHdcL3dYRGRUV1FpTmVsc1lQTDIrR2gyOU5QdmdcL1R5T1B1UVwvQU5mclJLMGpBWUFBQT09Iiwic3ViIjoiYWRtaW4iLCJyb2xlcyI6WyJST0xFX0FQSV9DTElFTlQiLCJST0xFX0xPT0tVUFNfTUFOQUdFTUVOVCIsIlJPTEVfTE9PS1VQU19WSUVXIiwiUk9MRV9OT1RJRklDQVRJT05TX1ZJRVciLCJST0xFX05PVElGSUNBVElPTl9WSUVXIiwiUk9MRV9PUkRFUl9NQU5BR0VNRU5UIiwiUk9MRV9PUkRFUl9WSUVXIiwiUk9MRV9QUk9WSURFUiBfVklFVyIsIlJPTEVfUFJPVklERVJfTUFOQUdFTUVOVCIsIlJPTEVfUFJPVklERVJfVVNFIiwiUk9MRV9SQVdfREFUQV9NQU5BR0VNRU5UIiwiUk9MRV9SQVdfREFUQV9WSUVXIiwiUk9MRV9SRVFVRVNUX01BUF9NQU5BR0VNRU5UIiwiUk9MRV9SRVFVRVNUX01BUF9WSUVXIiwiUk9MRV9ST0xFX0dST1VQX01BTkFHRU1FTlQiLCJST0xFX1JPTEVfR1JPVVBfVklFVyIsIlJPTEVfUk9MRV9NQU5BR0VNRU5UIiwiUk9MRV9ST0xFX1ZJRVciLCJST0xFX1NVUEVSX0FETUlOIiwiUk9MRV9TVVBQTElFUl9BUFBST1ZBTCIsIlJPTEVfU1VQUExJRVJfTUFOQUdFTUVOVCIsIlJPTEVfU1VQUExJRVJfVklFVyIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfTUFOQUdFTUVOVCIsIlJPTEVfU1lTVEVNX1NFVFRJTkdfVVNFIiwiUk9MRV9TWVNURU1fU0VUVElOR19WSUVXIiwiUk9MRV9UUlVTVEVEX0RFVklDRVNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUiIsIlJPTEVfVVNFUlNfTUFOQUdFTUVOVCIsIlJPTEVfVVNFUlNfU0hPVyIsIlJPTEVfVVNFUlNfVklFVyIsIlJPTEVfVVNFUl9QUk9GSUxFIl0sImlzcyI6IlNwcmluZyBTZWN1cml0eSBSRVNUIEdyYWlscyBQbHVnaW4iLCJleHAiOjE2OTUyMjc5NDksImlhdCI6MTY5NTIyNDQ0OX0.JzuJ4iKniXLVgP8iW5jLlatDbw9d9qYVEZLMv8YAaVE',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ProductsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Products',
      apiUrl: 'https://dummyjson.com/products',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic products(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      );
  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.products[:].title''',
        true,
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.products[:].description''',
        true,
      );
}

class ProductListingCall {
  static Future<ApiCallResponse> call({
    String? cat = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ProductListing',
      apiUrl: 'https://dummyjson.com/products/category/${cat}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic productsCat(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      );
}

class AddressCall {
  static Future<ApiCallResponse> call({
    String? address = '',
    int? randomNumber,
  }) async {
    final ffApiRequestBody = '''
{
  "msgId": "8288288811812",
  "query": "${address}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Address',
      apiUrl:
          'https://558a9a1c-cfbe-413c-984f-806f4796dc02.mock.pstmn.io/logistics/api/v1/address/list',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic namesOfAddress(dynamic response) => getJsonField(
        response,
        r'''$.records[:].name''',
        true,
      );
  static dynamic encodedidForAddress(dynamic response) => getJsonField(
        response,
        r'''$.records[:].encodedId''',
        true,
      );
}

class ProductAPICall {
  static Future<ApiCallResponse> call({
    String? searchValue = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Product API',
      apiUrl: 'https://dummyjson.com/products/search?q=${searchValue}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic productData(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      );
}

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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
