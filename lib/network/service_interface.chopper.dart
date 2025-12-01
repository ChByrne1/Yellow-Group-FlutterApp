// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_interface.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ServiceInterface extends ServiceInterface {
  _$ServiceInterface([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ServiceInterface;

  @override
  Future<Response<List<Map<String, dynamic>>>> getEvents() {
    final Uri $url = Uri.parse('/Event');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> newEvents(EventNew event) {
    final Uri $url = Uri.parse('/Event');
    final $body = event;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<String>> updateEvent(
    int id,
    EventEdit event,
  ) {
    final Uri $url = Uri.parse('/Event/${id}');
    final $body = event;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<String, String>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> deleteEvent(
    int id,
    int ts,
  ) {
    final Uri $url = Uri.parse('/Event/${id}/${ts}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<List<Map<String, dynamic>>>> getCafeteria() {
    final Uri $url = Uri.parse('/Cafeteria');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> newCafeteria(CafeteriaMenu cafe) {
    final Uri $url = Uri.parse('/Cafeteria');
    final $body = cafe;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> updateCafeteria(
    int id,
    EventEdit event,
  ) {
    final Uri $url = Uri.parse('/Cafeteria/${id}');
    final $body = event;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> deleteCafeteria(
    int id,
    int ts,
  ) {
    final Uri $url = Uri.parse('/Cafeteria/${id}/${ts}');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<List<Map<String, dynamic>>>> getNews() {
    final Uri $url = Uri.parse('/News');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<List<Map<String, dynamic>>>> getSchool() {
    final Uri $url = Uri.parse('/School');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<List<Map<String, dynamic>>>> getAnnouncements() {
    final Uri $url = Uri.parse('/Announcement');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<List<Map<String, dynamic>>>> getCampus() {
    final Uri $url = Uri.parse('/Campus');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<Map<String, dynamic>>, Map<String, dynamic>>($request);
  }
}
