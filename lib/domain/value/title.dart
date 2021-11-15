import 'package:freezed_annotation/freezed_annotation.dart';

part 'title.freezed.dart';

@freezed
class Title with _$Title {
  @Assert('value.length < 20')
  const factory Title(
    String value,
  ) = _Title;
}

class TitleConverter implements JsonConverter<Title, String> {
  const TitleConverter();

  @override
  Title fromJson(String value) {
    return Title(value);
  }

  @override
  String toJson(Title title) {
    return title.value;
  }
}
