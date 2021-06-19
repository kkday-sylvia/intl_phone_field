import 'package:flutter/foundation.dart';

class PhoneNumber {
  String? countryISOCode;
  String? countryCode;
  String? number;

  PhoneNumber({
    required this.countryISOCode,
    required this.countryCode,
    required this.number,
  });

  String get completeNumber {
    if(number != null) {
      int? length = number?.length?? 0;
      if(length > 1){
        String first = number?.substring(0, 1)?? '';
        if (first == '0') {
          number = number?.substring(1);
        }
      }
    }
    return countryCode! + number!;
  }
}
