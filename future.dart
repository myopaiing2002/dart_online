//async await
Future<List<String>> doIt() async {
  //future asyn await
  await Future.delayed(Duration(seconds: 2));
  return ["one", "two", 'Three'];
}

void main() async {
  var result = await doIt();
  print(result);
}
