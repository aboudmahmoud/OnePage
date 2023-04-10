import 'package:get/get.dart';

class HartMoudle{
  var _isFavoret=false.obs;

  get isFavoret => _isFavoret.value;

  set isFavoret(value) {
    _isFavoret.value = value;
  }
}