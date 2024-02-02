
  String binaryToDecimal(String x){
    int length = x.length-1; 
     int result = 0;
     
     for(String digit in x.split("")) {
      print(digit);
      result = result + int.parse(digit)*(2^length);
      length--;
     }
return result.toString();
     



  }