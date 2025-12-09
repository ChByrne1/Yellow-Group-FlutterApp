// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_interface.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ServiceInterface extends ServiceInterface {
  _$ServiceInterface([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ServiceInterface;

  @override
  Future<Response<List<Map<String, dynamic>>>> callAll(String section) {
    final Uri $url = Uri.parse('/${section}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<List<Map<String, dynamic>>, Map<String, dynamic>>(
      $request,
    );
  }

  @override
  Future<Response<List<Map<String, dynamic>>>> callOne(String section, int id) {
    final Uri $url = Uri.parse('/${section}/${id}');
    final Request $request = Request('GET', $url, client.baseUrl);
    return client.send<List<Map<String, dynamic>>, Map<String, dynamic>>(
      $request,
    );
  }

  @override
  Future<Response<Map<String, dynamic>>> newOne(
    String section,
    Map<String, dynamic> event,
  ) {
    final Uri $url = Uri.parse('/${section}');
    final $body = event;
    final Request $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }
}
