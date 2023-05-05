import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    final String? user,
    final String? password,
  }) = _User;

  factory User.fromJson(final Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }
}
