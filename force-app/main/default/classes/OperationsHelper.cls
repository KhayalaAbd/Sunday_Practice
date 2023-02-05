public  class OperationsHelper {
 public decimal largestOutOfTwoNumber(decimal x, decimal y){
 decimal larger1;
 if(x >= y){
   larger1=x;
 }else{
    larger1=y;
 }
 return larger1;
 }
  public decimal smallestOutOfThreeNumber(decimal x, decimal y, decimal z  ){
    decimal smallest1;
    if(x <= y && x <= z ){
    smallest1 = x;
  }else if(y<= x && y <= z ){
        smallest1 = y;
    }else{
        smallest1=z;
    }
    return smallest1;
   }
  public integer sumOfPositiveInteger(integer n){
  integer sum;
 if(n < 0){
    sum = null;
  system.debug('we are not calculating');
}else{
sum = 0;
for(integer i = 1; i <= n ; i++){
sum = sum + i;
 }
 }
return sum;
  }
  public class OperationHelpers {
    public static decimal sum(list<Decimal> values){
      if(values.isEmpty()){
          system.debug('Provide provide values to do the operation  ');
          return null;
      }else{
          Decimal result = 0;
          For(Decimal value: values){
          result += value;
          }
          return result;
      }
    }
  
    public static decimal average (list<decimal> values){
      if(values.isEmpty()){
          system.debug('Please provide values to do the operation');
          return null;
      }else {
          Decimal result = 0;
          For(Decimal value: values){
          result += value;
          }
          return result / values.size();
      }
    }
    public static decimal Highest(list<decimal> values){
      if(values.isEmpty()){
          system.debug('Please provide values to do the operation');
          return null;
      }
       Decimal result = values[0];
       for(Decimal value: values){
          if (value > result){
              result = value;
          }
       }
       return result;
          }
  
          public static decimal lowest(list<decimal> values){
      if(values.isEmpty()){
          system.debug('Please provide values to do the operation');
          return null;
      }
       Decimal result = values[0];
       for(Decimal value: values){
          if (value < result){
              result = value;
          }
       }
       return result;
          }
  
        }
      }
 


