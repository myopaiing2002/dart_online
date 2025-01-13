//sleep
import 'dart:io';

void main(){
  //Duration(seconds: 3);
  print('Before sleep time print');
  sleep(Duration(seconds: 3));
  print('After sleep 3 second print');
  var ind = 0;
  var name =['Kyaw Kyaw',"Soe Lay","Soe Mya","Kyaw Wana"];
  name.forEach((names) {
    Duration(seconds: 3);
    print(names);
  });
}