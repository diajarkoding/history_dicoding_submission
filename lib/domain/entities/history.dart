import 'package:freezed_annotation/freezed_annotation.dart';

part 'history.freezed.dart';
part 'history.g.dart';

@freezed
class History with _$History {
  const factory History({
    required String id,
    required String name,
    required String description,
    required String photoUrl,
    required String createdAt,
    required double lat,
    required double lon,
  }) = _History;

  factory History.fromJson(Map<String, dynamic> json) =>
      _$HistoryFromJson(json);
}
