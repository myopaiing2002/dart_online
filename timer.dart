import 'dart:async';

void main() {
  //time out
  var ind = 0;

  // Timer.periodic(Duration(seconds: 2),(time){
  //   print("It is time out");
  //   ind++;
  //   if(ind == 5){
  //     print("It is 5 times");
  //     time.cancel();
  //   }
  // });

  var names = ["Kyaw Kyaw", "Soe Soe", "Mya Mya", "Soe Lay"];
  var nameId = 0;
  Timer.periodic(Duration(seconds: 2), (timer) {
    if (nameId < names.length) {
      print("Current name is ${names[nameId]}");
      nameId++;
    } else {
      print("These all username");
      timer.cancel();
    }
  });
}
