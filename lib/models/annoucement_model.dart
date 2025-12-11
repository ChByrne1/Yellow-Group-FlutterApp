import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';
import 'package:yellow_group_flutterapp/models/overview.dart';
import '../network/overview.dart';

part 'annoucement_model.g.dart';

part 'annoucement_model.freezed.dart';

@freezed
@HiveType(typeId: 0)
class AnnoucementCall extends HiveObject with _$AnnoucementCall {
  AnnoucementCall._();

  factory AnnoucementCall({
    @HiveField(0) int? id,
    @HiveField(1) String? title,
    @HiveField(2) String? message,
    @HiveField(3) DateTime? datePosted,
    @HiveField(4) int? schoolId,
    @HiveField(5) int? timestamp,
    @HiveField(6) bool? isDeleted,
  }) = _AnnoucementCall;

  factory AnnoucementCall.fromJson(Map<String, dynamic> json) =>
      _$AnnoucementCallFromJson(json);

  String? get displayTitle => title;

  DateTime get postedDate => datePosted ?? DateTime.now();

  SchoolCall? get getSchool {
    if (schoolId == null) return null;
    final box = Hive.box<SchoolCall>('School');
    return box.values.firstWhere(
      (s) => s.id == schoolId,
      orElse: () => null as SchoolCall,
    );
  }
}

Future<List<AnnoucementCall>> fetchAnnoucements() async {
  final apiClient = ApiClient(baseURL: apiUrl);
  final response = await apiClient.school.callAll("Annoucement");

  if (response.isSuccessful && response.body != null) {
    List<Map<String, dynamic>>? jsonList = response.body;
    List<AnnoucementCall> items =
        jsonList!
            .map(
              (json) => AnnoucementCall.fromJson(json),
            )
            .toList();
    return items;
  } else {
    return [];
  }
}
