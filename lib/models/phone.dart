import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone.g.dart';

@JsonSerializable()
class PhoneNumber {
  final String value;

  PhoneNumber(this.value);

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
  
  Map<String, dynamic> toJson() => _$PhoneNumberToJson(this);
}