
import 'package:yellow_group_flutterapp/models/news.dart';

class MockNewsService
{
  static List<SchoolNews> getNews()
  {
    var list = <SchoolNews>[];

    list.add(SchoolNews(id: 0, SchoolId: 0, Headline: 'Headline Placeholder 1',
      Content: "This is the body of an article, you shouldn't be seeing past this point. Blah Blah Blah",
      DatePublished: DateTime(2024, 12, 1), Author: 'Jimmy Writesocks',));

    list.add(SchoolNews(id: 1, SchoolId: 0, Headline: 'Headline Placeholder 2',
      Content: "This is the body of an article, you shouldn't be seeing past this point. Blah Blah Blah",
      DatePublished: DateTime(2024, 12, 2), Author: 'Jimmy Writesocks',));

    list.add(SchoolNews(id: 2, SchoolId: 0, Headline: 'Headline Placeholder 3',
      Content: "This is the body of an article, you shouldn't be seeing past this point. Blah Blah Blah",
      DatePublished: DateTime(2024, 12, 3), Author: 'Jimmy Writesocks',));

    list.add(SchoolNews(id: 3, SchoolId: 0, Headline: 'Headline Placeholder 4',
      Content: "This is the body of an article, you shouldn't be seeing past this point. Blah Blah Blah",
      DatePublished: DateTime(2024, 12, 4), Author: 'Jimmy Writesocks',));

    return list;
  }
}