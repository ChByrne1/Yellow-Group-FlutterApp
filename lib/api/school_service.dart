import 'package:chopper/chopper.dart';
part 'school_service.chopper.dart';


<<<<<<< HEAD
@ChopperApi(baseUrl: '/v1/Health' )
=======
@ChopperApi(baseUrl: '/v1')
>>>>>>> 313944b100444d6daf9ad2b694153746e67a7c57

abstract class SchoolService extends ChopperService
{
  static SchoolService create ([ChopperClient? client]) => _$SchoolService(client);

  @Get(path: '/ping')
  Future<Response<String>> ping();
}
