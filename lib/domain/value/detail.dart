import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail.freezed.dart';

@freezed
class Detail with _$Detail {
  @Assert('value.length < 120')
  const factory Detail({
    required String value,
  }) = _Detail;
}
