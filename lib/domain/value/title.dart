import 'package:freezed_annotation/freezed_annotation.dart';

part 'title.freezed.dart';

@freezed
class Title with _$Title {
  @Assert('value.length < 20')
  const factory Title({
    required String value,
  }) = _Title;
}
