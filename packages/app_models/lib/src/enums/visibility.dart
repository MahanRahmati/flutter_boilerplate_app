import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum Visibility {
  @JsonValue('public')
  public,

  @JsonValue('private')
  private,
}
