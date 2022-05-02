library power_plant;

import 'dart:math';

//Uses the date to generate numbers and the random function to generate letters(character codes)
String uniqueToken({
  required int tokenLength,
}){
  Random random = Random();
  DateTime dateTime = DateTime.now();
  String dateAsString = "${dateTime.year}${dateTime.month}${dateTime.day}${dateTime.hour}${dateTime.minute}${dateTime.second}${dateTime.millisecond}${dateTime.microsecond}";
  List<String> resultingToken = dateAsString.split("");
  //Generate letters randomly and add them to the variable above
  while(resultingToken.length < tokenLength){
    int whereToInsert = random.nextInt(resultingToken.length);
    int randomlyGeneratedCharacterNumber;
    int typeOfChar = random.nextInt(3);
    if(0 == typeOfChar){
      randomlyGeneratedCharacterNumber = 33 + random.nextInt(14);
    }else if(1 == typeOfChar){
      randomlyGeneratedCharacterNumber = 58 + random.nextInt(68);
    }else if(2 == typeOfChar){
      randomlyGeneratedCharacterNumber = 161 + random.nextInt(11);
    }else{
      randomlyGeneratedCharacterNumber = 174 + random.nextInt(81);
    }
    resultingToken.insert(whereToInsert, String.fromCharCode(randomlyGeneratedCharacterNumber));
  }
  String result = resultingToken.join();
  if(tokenLength < result.length){
    return result.substring(0,tokenLength);
  }else{
    return result;
  }
}