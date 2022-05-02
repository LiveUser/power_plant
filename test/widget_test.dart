// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:power_plant/power_plant.dart';
import 'package:test/test.dart';
void main() {
  test("Generate a random token", (){
    String token = uniqueToken(tokenLength: 50);
    print("My randomly generated token is:");
    print(token);
  });
}
/*Generate all characters
for(int i = 0; i <= 255; i++){
  print("$i = ${String.fromCharCode(i)}");
}
*/