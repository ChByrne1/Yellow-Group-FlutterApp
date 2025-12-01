import 'package:chopper/chopper.dart';
import '../models/overview.dart';
import 'overview.dart';
part 'service_interface.chopper.dart';


// https://www.geeksforgeeks.org/flutter/flutter-make-an-http-post-request/

//https://pub.dev/documentation/chopper/latest/chopper/Body-class.html
// For Generic - Response<List<Map<String, dynamic>>>;

typedef ApiResponse = Response<List<Map<String, dynamic>>>;
//typedef CafeteriaItemResponse = Response<List<Map<String, dynamic>>>;


typedef ApiPost = Response<Map<String, dynamic>>;
typedef ApiPostFinal = Map<String, dynamic>;
typedef ApiPostString = Response<String>;

@ChopperApi()
abstract class ServiceInterface extends ChopperService {
  @Get(path: '/Event')
  Future<ApiResponse> getEvents();

  @Post(path: '/Event')
  Future<ApiPost> newEvents(
      @Body() EventNew event
      );

  @Put(path: '/Event/{id}')
  Future<ApiPostString> updateEvent(
      @Path('id') int id,
      @Body() EventEdit event
      );
  @Delete(path: '/Event/{id}/{ts}')
  Future<ApiPost> deleteEvent(
  @Path('id') int id,
  @Path('ts') int ts,
  );

  @Get(path: '/Cafeteria')
  Future<ApiResponse> getCafeteria();
  @Post(path: '/Cafeteria')
  Future<ApiPost> newCafeteria(
      @Body() CafeteriaMenu cafe
      );
  @Post(path: '/Cafeteria/{id}')
  Future<ApiPost> updateCafeteria(
      @Path('id') int id,
  @Body() EventEdit event
      );

  @Post(path: '/Cafeteria/{id}/{ts}')
  Future<ApiPost> deleteCafeteria(
      @Path('id') int id,
      @Path('ts') int ts,
      );

  @Get(path: '/News')
  Future<ApiResponse> getNews();


  @Get(path: '/School')
  Future<ApiResponse> getSchool();


  @Get(path: '/Announcement')
  Future<ApiResponse> getAnnouncements();

  @Get(path: '/Campus')
  Future<ApiResponse> getCampus();

static ServiceInterface create ([ChopperClient? client]) => _$ServiceInterface(client);

}