import 'package:get/get.dart';

class RadioValueMoudle{
  var _selectedValue= 1.obs;


  get selectedValue => _selectedValue.value;

  set selectedValue(value) {
    _selectedValue.value = value;
  }
}