import 'package:flutter/cupertino.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';

import '../models/overview.dart';

Future<void> initHive() async {
  await Hive.initFlutter();
  //https://github.com/isar/hive/issues/520
  Hive.ignoreTypeId<dynamic>(33);

  Hive.registerAdapter(EventCallAdapter());
  Hive.registerAdapter(NewsCallAdapter());
  Hive.registerAdapter(CafeteriaItemAdapter());
  Hive.registerAdapter(AnnoucementCallAdapter());
  Hive.registerAdapter(CampusCallAdapter());
  Hive.registerAdapter(SchoolCallAdapter());

 await Hive.openBox<EventCall>('Events');
  await Hive.openBox<NewsCall>('News');
  await Hive.openBox<CafeteriaItem>('Cafeterias');
  await Hive.openBox<AnnoucementCall>('Announcement');
  await Hive.openBox<CampusCall>('Campus');
  await Hive.openBox<SchoolCall>('School');


}




