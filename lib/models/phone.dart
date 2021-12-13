// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';


part 'phone.g.dart';
part 'phone.freezed.dart';
@freezed
class PhoneNumber with _$PhoneNumber{
  @JsonSerializable(explicitToJson: true)
  const factory PhoneNumber(String value) = _PhoneNumber;

  factory PhoneNumber.fromInput(String input) {
    late String result;
    final trimmed = input.trim();
    
    if (trimmed[0] != '0') {
      result = '+$trimmed';
    } else {
      result = trimmed;
    }
    result = result.replaceAll(RegExp(r'[() -]'), '');
    return PhoneNumber(result);
  }

  factory PhoneNumber.fromJson(Map<String, dynamic> json) => _$PhoneNumberFromJson(json);
}