public class Player {
    public void playing(){
    string playerName1 = 'John Smith';
    string playerName2 = 'Khayala Abdullayeva';
    string playerName3 = 'Esmeya Sorun';
    string playerName4 = 'Badam Esmer';
    string playerName5 = 'Esmegul Badem';
    
    system.debug(playerName1);
    system.debug(playerName2);
    system.debug(playerName3);
    system.debug(playerName4);
    system.debug(playerName5);

    integer one = playerName1.length();
    integer two = playerName2.length();
    integer three = playerName3.length();
    integer four = playerName4.length();
    integer five = playerName5.length();
    system.debug('number of characters of player1 ='+ one);
    system.debug('number of characters of player2 ='+ two);
    system.debug('number of characters of player3 ='+ three);
    system.debug('number of characters of player4 ='+ four);
    system.debug('number of characters of player5 ='+ five);

    string upper = playerName1.toUpperCase();
    string upper2 = playerName3.toUpperCase();
    System.debug(upper + ' and ' + upper2);
    
    
}
    

    }
