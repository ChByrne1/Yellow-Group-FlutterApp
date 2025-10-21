import 'dart:async';
import 'dart:convert';
import 'package:chopper/chopper.dart';

/*
import 'package:http/http.dart';


class ModelConverter implements Converter
{
  @override
  Request convertRequest(Request request)
  {
    final reqs = applyHeader (
      request,
      contentTypeKey,
      jsonHeaders,
      override: false
    );
    return jsonEncode(reqs);
  }

  Request json

}*/

class ModelConverter extends JsonConverter {
  const ModelConverter();

  @override
  FutureOr<Response<ResultType>> convertResponse<ResultType, Item>
      (
      Response response,
      ) {
    final bodyBytes = response.bodyBytes;


    if (ResultType == String) {
      final txt = utf8.decode(bodyBytes);
      return response.copyWith<ResultType>(body: txt as ResultType);
    }
    return super.convertResponse<ResultType, Item>(response);
       }
  }

