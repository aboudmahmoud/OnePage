import 'package:get/get.dart';

class CounterModel{
  var _Counter=1.obs;


  get Counter => _Counter.value;

  set Counter(value) {
    _Counter.value = value;
  }

  void inc(){
    _Counter.value++;
  }
  void dec(){
    _Counter.value--;
  }
}