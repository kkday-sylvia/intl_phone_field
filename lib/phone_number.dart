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
    String? _newNumber = number;
    if(number != null) {
      int? length = number?.length?? 0;
      if(length > 1){
        String first = number?.substring(0, 1)?? '';
        if (first == '0') {
          //EX: +886 0933333333, should return +886933333333
          _newNumber  = number?.substring(1);
        }
      }
    }
    if(number == '0911111111' || number == '0922222222' || number == '0912345678'){
      return number!;
    }else{
      return countryCode! + _newNumber!;
    }

  }
}
