//file read
import 'dart:io';
Future<String> fileRead(String filePath) async {
  File f = await new File(filePath);
  return f.readAsString();
}
void main()async {
  var filePath = "pubspec.yaml";
 await fileRead(filePath)
      .then((value) => print(value))
      .catchError((error) => print(error));
}
