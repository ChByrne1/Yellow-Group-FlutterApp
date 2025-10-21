import 'package:chopper/chopper.dart';


// For Generic - Response<List<Map<String, dynamic>>>;

typedef EventsResponse = Response<List<Map<String, dynamic>>>;
typedef CafeteriaItemResponse = Response<List<Map<String, dynamic>>>;
typedef CafeteriaSpecialResponse = Response<List<Map<String, dynamic>>>;
typedef CafeteriaMenuResponse = Response<List<Map<String, dynamic>>>;
typedef NewsResponse = Response<List<Map<String, dynamic>>>;
typedef SchoolResponse = Response<List<Map<String, dynamic>>>;

abstract class ServiceInterface {
  Future<EventsResponse> getEvents();
  Future<CafeteriaItemResponse > getCafeteriaItems();
  Future<CafeteriaSpecialResponse> getCafeteriaSpecial();
  Future<CafeteriaMenuResponse> getMenu();
  Future<NewsResponse> getNews();
  Future<SchoolResponse> getSchool();


}