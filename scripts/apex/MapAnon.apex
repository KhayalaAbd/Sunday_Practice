Map<string,decimal> currISOCodeAndExchangeRateMap = new Map<string,decimal>();
currISOCodeAndExchangeRateMap.put('AUD',0.73);
currISOCodeAndExchangeRateMap.put('CAD',0.78);
currISOCodeAndExchangeRateMap.put('EUR',1.13);
currISOCodeAndExchangeRateMap.put('NZD',0.68);
currISOCodeAndExchangeRateMap.put('INR',0.013);

system.debug(currISOCodeAndExchangeRateMap.get('EUR'));
system.debug('This map includes SAD?? ' +currISOCodeAndExchangeRateMap.containsKey('SAD'));
system.debug(currISOCodeAndExchangeRateMap.values());
system.debug(currISOCodeAndExchangeRateMap.keySet());

list<string> currISosWithRateGreaterThanEqualToOne = new list<string>();
list<string> otherCurriIoss=new list<string>();
For(string IsoCode:currISOCodeAndExchangeRateMap.keySet()){
    if(currISOCodeAndExchangeRateMap.get(IsoCode) >= 1){
        currISosWithRateGreaterThanEqualToOne.add(IsoCode);
    }else{
        otherCurriIoss.add(IsoCode);
        
    }
    

}
system.debug('This is grader Than or Equal' + currISosWithRateGreaterThanEqualToOne);
system.debug('This is other Currency'  + otherCurriIoss);