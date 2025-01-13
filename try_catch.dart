//file crreate
import 'dart:io';
import 'constructor.dart';
Future<bool> fileCreate(String filePath, String data) async {
  File f = await File(filePath);
  f.writeAsString(data);
  return true;
}
Future<bool> fileAppend(String filePath, String data) async {
  File f = await File(filePath);
  await f.writeAsString(data, mode: FileMode.append);
  return true;
}
Future<String> Fileread(String filePath) async {
 // var data = await f.readAsString();
//  return data;
  //try and catch
  try {
    File f = await File(filePath);
    if(await f.existsSync()){
      var data = await f.readAsString();
      return data;
    }else{
      throw("error message");
    }
  } catch (e) {
    print(e);
  }
  finally{
    print("Weldone");
  }
  return data;
  //try and catc
  // try {
  //   File f = await File(filePath);
  //   if (await f.existsSync()) {
  //     var data = await f.readAsString();
  //     return data;
  //   } else {
  //     throw ("Error Message");
  //   }
  // } catch (e) {
  //   print(e);
  // } finally {
  //   print("Well Done!!!");
  // }
  // return data;
}
Future<bool> filedelete(String filePath) async {
  File f = await File(filePath);
  f.delete();
  return true;
}
void main() async {
  //var bool
  //var bol = await fileCreate('text.txt', data);
  // var bol = await fileAppend('text.txt', "\n Hello World");
  String result = await Fileread('text.txt');
  // var result = bol ? "success" : "fail";
  // var result = await filedelete('text.txt');
  print(result);
}
