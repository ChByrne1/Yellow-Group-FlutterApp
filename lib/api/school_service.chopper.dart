// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$SchoolService extends SchoolService {
  _$SchoolService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = SchoolService;

  @override
  Future<Response<String>> ping() {
    final Uri $url = Uri.parse('test/ping');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<String, String>($request);
  }
}
