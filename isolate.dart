import 'dart:isolate';

void doIt(String message) {
  print('$message');
}

void main() {
  Isolate.spawn(doIt, "First core is isolate");
  Isolate.spawn(doIt, "Second core is isolate");
  Isolate.spawn(doIt, "Third core is isolate");
}
