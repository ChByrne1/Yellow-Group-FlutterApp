import 'package:chopper/chopper.dart';
part 'school_service.chopper.dart';


@ChopperApi(baseUrl: '/v1/Health' )

abstract class SchoolService extends ChopperService
{
  static SchoolService create ([ChopperClient? client]) => _$SchoolService(client);

  @Get(path: '/ping')
  Future<Response<String>> ping();
}