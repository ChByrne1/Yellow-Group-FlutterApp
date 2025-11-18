// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$SchoolService extends SchoolService {
  _$SchoolService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = SchoolService;

  @override
  Future<Response<String>> ping() {
    final Uri $url = Uri.parse('/v1/Health/ping');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<String, String>($request);
  }
}
