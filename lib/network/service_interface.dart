import 'package:chopper/chopper.dart';

part 'service_interface.chopper.dart';

typedef ApiResponse = Response<List<Map<String, dynamic>>>;
typedef ApiPost = Response<Map<String, dynamic>>;
typedef ApiPostFinal = Map<String, dynamic>;

@ChopperApi()
abstract class ServiceInterface extends ChopperService {
  //get all
  @Get(path: '/{section}')
  Future<ApiResponse> callAll(
      @Path('section') String section
      );

  //get one
  @Get(path: '/{section}/{id}')
  Future<ApiResponse> callOne(
    @Path('section') String section,
    @Path('id') int id,
  );

  @Post(path: '/{section}')
  Future<ApiPost> newOne(
    @Path('section') String section,
    @Body() ApiPostFinal event,
  );

  //Edit, New, Delete currently not working
  /*

  //edit one
  @Put(path: '/{section}/{id}')
  Future<ApiResponse> editOne(@Path('section') String section, @Path('id') int id);
  //new one
  @Put(path: '/{section}')
  Future<ApiResponse> newOne(@Path('section') String section);
  //delete one
  @Delete(path: '/{section}/{id}/{ts}')
  Future<ApiResponse> deleteOne(@Path('section') String section, @Path('id') int id, @Path('ts') int ts,);
*/

  static ServiceInterface create([ChopperClient? client]) =>
      _$ServiceInterface(client);
}
